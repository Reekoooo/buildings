

import 'package:building/application/router/page_action.dart';
import 'package:building/application/router/ui_pages.dart';
import 'package:building/presentation/home_screen.dart';
import 'package:building/presentation/login_screen.dart';
import 'package:building/presentation/signup_screen.dart';
import 'package:building/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PagesChangeNotifier extends StateNotifier<List<Page>>{
  PagesChangeNotifier(value) : super([
    MaterialPage(
        child: SplashScreen(),
        name: '/splash',
        key: ValueKey('/splash'),
        arguments: SplashConfig()
    )
  ]);
  bool _splashFinished = false;
  bool get splashFinished => _splashFinished;
  PageAction _currentAction = NoPageAction();
  PageAction get currentAction => _currentAction;

  set currentAction(PageAction action) {
    if ( !(action is SplashConfig)) {
      _splashFinished = true;
    }
    _currentAction = action;
    state = buildPages();
  }
  void resetCurrentAction() {
    _currentAction = NoPageAction();
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
  void pop() {
    if (canPop()) {
      _removePage(state.last as MaterialPage);
    }
  }

  bool canPop() {
    return state.length > 1;
  }

  void _removePage(MaterialPage page) {
    state.remove(page);
  }

  MaterialPage _createPage(Widget child, PageConfiguration pageConfig) {
    return MaterialPage(
        child: child,
        key: ValueKey(pageConfig.path),
        name: pageConfig.path,
        arguments: pageConfig);
  }

  void _addPageData(Widget child, PageConfiguration pageConfig) {
    state.add(_createPage(child, pageConfig));
  }

  void addPage(PageConfiguration pageConfig) {
    final shouldAddPage = state.isEmpty ||
        (state.last.arguments as PageConfiguration).path !=
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
    if (state.isEmpty) {
      state.removeLast();
    }
    addPage(newRoute);
  }

  void setPath(List<MaterialPage> path) {
    state.clear();
    state.addAll(path);
  }

  void replaceAll(PageConfiguration newRoute) {
    final shouldAddPage = state.isEmpty ||
        (state.last.arguments as PageConfiguration).path !=
            newRoute.path;
    if (shouldAddPage) {
      state.clear();
      addPage(newRoute);
    }
  }

  void push(PageConfiguration newRoute) {
    addPage(newRoute);
  }

  void pushWidget(Widget child, PageConfiguration newRoute) {
    _addPageData(child, newRoute);
  }

  void addAll(List<PageConfiguration> routes) {
    state.clear();
    routes.forEach((route) {
      addPage(route);
    });
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
    if (!splashFinished) {
      replaceAll(SplashConfig());
    } else {

      currentAction.map(
        none: (_)=>{},
        addPage: _addPageAction,
        addAll: _addAllAction,
        addWidget: _addWidgetAction,
        pop: (_) => pop(),
        replace: _replaceAction,
        replaceAll: _replaceAllAction,
      );
    }
    resetCurrentAction();
    return List.of(state);
  }

  void parseRoute(Uri uri) {
    if (uri.pathSegments.isEmpty) {
      replaceAll(SplashConfig());
      return;
    } else if (uri.pathSegments.length == 1) {
      final path = uri.pathSegments[0];
      switch (path) {
        case 'splash':
          currentAction = ReplaceAll(page: SplashConfig());
          break;
        case 'login':
          currentAction = ReplaceAll(page: LoginConfig());
          break;
        case 'signUp':
          currentAction = AddAll(pages: [LoginConfig(),SignUpConfig()]);
          break;
        case 'home':
          currentAction = ReplaceAll(page: HomeConfig());
          break;
        default:
          currentAction = ReplaceAll(page: SplashConfig());
          break;
      }
    }
  }

}