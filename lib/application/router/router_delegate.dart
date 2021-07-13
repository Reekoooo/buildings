import 'package:building/application/router/page_action.dart';
import 'package:building/application/router/ui_pages.dart';
import 'package:building/domain/app_state.dart';
import 'package:building/presentation/home_screen.dart';
import 'package:building/presentation/login_screen.dart';
import 'package:building/presentation/signup_screen.dart';
import 'package:building/presentation/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';





class BuildingRouterDelegate extends RouterDelegate<PageConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final List<Page> _pages = [];

  @override
  final GlobalKey<NavigatorState> navigatorKey;
  final AppState appState;

  BuildingRouterDelegate(this.appState) : navigatorKey = GlobalKey() {
    appState.addListener(() {
      notifyListeners();
    });
  }

  List<MaterialPage> get pages => List.unmodifiable(_pages);

  int numPages() => _pages.length;

  @override
  PageConfiguration get currentConfiguration =>
      _pages.last.arguments as PageConfiguration;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: _onPopPage,
      pages: buildPages(),
    );
  }

  bool _onPopPage(Route<dynamic> route, result) {
    final didPop = route.didPop(result);
    if (!didPop) {
      return false;
    }
    if (canPop()) {
      pop();
      return true;
    } else {
      return false;
    }
  }

  void _removePage(MaterialPage page) {
    _pages.remove(page);
  }

  void pop() {
    if (canPop()) {
      _removePage(_pages.last as MaterialPage);
    }
  }

  bool canPop() {
    return _pages.length > 1;
  }

  @override
  Future<bool> popRoute() {
    if (canPop()) {
      _removePage(_pages.last as MaterialPage);
      notifyListeners();
      return Future.value(true);
    }
    return Future.value(false);
  }

  MaterialPage _createPage(Widget child, PageConfiguration pageConfig) {
    return MaterialPage(
        child: child,
        key: ValueKey(pageConfig.path),
        name: pageConfig.path,
        arguments: pageConfig);
  }

  void _addPageData(Widget child, PageConfiguration pageConfig) {
    _pages.add(_createPage(child, pageConfig));
  }

  void addPage(PageConfiguration pageConfig) {
    final shouldAddPage = _pages.isEmpty ||
        (_pages.last.arguments as PageConfiguration).path !=
            pageConfig.path;
    if (shouldAddPage) {
      pageConfig.map(
          splash: (splash)=>_addPageData(SplashScreen(), splash),
          login: (login) => _addPageData(LoginScreen(), login),
          signUp: (signUp)=> _addPageData(SignUpScreen(), signUp),
          home: (home) => _addPageData(HomeScreen(), home),
      );
    }
  }

  void replace(PageConfiguration newRoute) {
    if (_pages.isEmpty) {
      _pages.removeLast();
    }
    addPage(newRoute);
  }

  void setPath(List<MaterialPage> path) {
    _pages.clear();
    _pages.addAll(path);
  }

  void replaceAll(PageConfiguration newRoute) {
    setNewRoutePath(newRoute);
  }

  void push(PageConfiguration newRoute) {
    addPage(newRoute);
  }

  void pushWidget(Widget child, PageConfiguration newRoute) {
    _addPageData(child, newRoute);
  }

  void addAll(List<PageConfiguration> routes) {
    _pages.clear();
    routes.forEach((route) {
      addPage(route);
    });
  }

  @override
  Future<void> setNewRoutePath(PageConfiguration configuration) {
    final shouldAddPage = _pages.isEmpty ||
        (_pages.last.arguments as PageConfiguration).path !=
            configuration.path;
    if (shouldAddPage) {
      _pages.clear();
      addPage(configuration);
    }
    return SynchronousFuture(null);
  }

  void _setPageAction(PageAction action) {

  }

  void _addPageAction(action){
    _setPageAction(action);
    addPage(action.page);
  }

  void _addAllAction(action){
    addAll(action.pages);
  }

  void _addWidgetAction(action){
    _setPageAction(action);
    pushWidget(action.widget, action.page);
  }

  void _replaceAction(action){
    _setPageAction(action);
    replace(action.page);
  }

  void _replaceAllAction(action){
    replaceAll(action.page);
  }

  List<Page> buildPages() {
    if (!appState.splashFinished) {
      replaceAll(SplashConfig());
    } else {

      appState.currentAction.map(
          none: (_)=>{},
          addPage: _addPageAction,
          addAll: _addAllAction,
          addWidget: _addWidgetAction,
          pop: (_) => pop(),
          replace: _replaceAction,
          replaceAll: _replaceAllAction,
      );
    }
    appState.resetCurrentAction();
    return List.of(_pages);
  }

  void parseRoute(Uri uri) {
    if (uri.pathSegments.isEmpty) {
      setNewRoutePath(SplashConfig());
      return;
    } else if (uri.pathSegments.length == 1) {
      final path = uri.pathSegments[0];
      switch (path) {
        case 'splash':
          appState.currentAction = ReplaceAll(page: SplashConfig());
          break;
        case 'login':
          appState.currentAction = ReplaceAll(page: LoginConfig());
          break;
        case 'signUp':
          appState.currentAction = AddAll(pages: [LoginConfig(),SignUpConfig()]);
          break;
        case 'home':
          appState.currentAction = ReplaceAll(page: HomeConfig());
          break;
        default:
          appState.currentAction = ReplaceAll(page: SplashConfig());
          break;
      }
    }
  }
}
