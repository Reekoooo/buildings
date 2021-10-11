import 'dart:async';

import 'package:building/application/router/page_action.dart';
import 'package:building/application/router/ui_pages.dart';
import 'package:building/infrastructure/providers/data_sorces_providers.dart';
import 'package:building/infrastructure/providers/repository_providers.dart';
import 'package:building/presentation/home_screen.dart';
import 'package:building/presentation/login/login_screen.dart';
import 'package:building/presentation/signup/signup_screen.dart';
import 'package:building/presentation/splash_screen.dart';
import 'package:building/presentation/user_profile/user_profile_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_links/uni_links.dart';
import 'package:building/application/fcm.dart';

const MaterialPage initialPage = const MaterialPage(
  child: SplashScreen(),
  name: '/splash',
  key: ValueKey('/splash'),
  arguments: SplashConfig(),
);

class PagesStateNotifier extends StateNotifier<List<Page>> {
  final Reader _read;

  PagesStateNotifier(this._read) : super([initialPage]) {
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    prefs = await  SharedPreferences.getInstance();

    final initialUrl = await getInitialUri() ?? Uri.parse('/');
    if (initialUrl.path == '/') {
      final token = await _read(authRepositoryProvider).getToken();
      if (token == null) {
        logOut();
      } else {
        Fcm.configureFcmMessage();
        login();
      }
    } else {
      parseRoute(initialUrl);
    }

    _linkSubscription = linkStream.listen((String? uri) {
      if (!mounted) return;
      parseRoute(Uri.parse(uri ?? ''));
    }, onError: (Object err) {
      print('Got error $err');
    });
  }

  bool _splashFinished = false;

  bool get splashFinished => _splashFinished;
  StreamSubscription? _linkSubscription;
  PageAction _currentAction = NoPageAction();

  PageAction get currentAction => _currentAction;

  set currentAction(PageAction action) {
    if (!(action is SplashConfig)) {
      _splashFinished = true;
    }
    _currentAction = action;
    state = buildPages();
  }

  void resetCurrentAction() {
    _currentAction = NoPageAction();
  }

  void login({bool userProfileNeedUpdate = false}) {
    if (userProfileNeedUpdate) {
      currentAction = AddAll(pages: [HomeConfig(), UserProfileConfig()]);
    } else {

      currentAction = ReplaceAll(page: HomeConfig());
    }
  }
  void editUserProfile(){
    currentAction = AddPage(page: UserProfileConfig());
  }

  void logOut() {
    currentAction = ReplaceAll(page: LoginConfig());
  }

  void signUp() {
    currentAction = AddAll(pages: [LoginConfig(), SignUpConfig()]);
  }

  void cancel() {
    currentAction = Pop();
  }

  Future<bool> popRoute() {
    if (canPop()) {
      currentAction = Pop();
      return SynchronousFuture(true);
    }
    return SynchronousFuture(false);
  }

  bool onPopPage(Route<dynamic> route, result) {
    print('result from pop = $result');
    //return false;

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
      //currentAction = Pop();
      _removePage(state.last as MaterialPage);
    }
  }

  bool canPop() {
    return state.length > 1;
  }

  void _removePage(MaterialPage page) {
    state.remove(page);
    state = state;
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
        (state.last.arguments as PageConfiguration).path != pageConfig.path;
    if (shouldAddPage) {
      pageConfig.map(
        splash: (splash) => _addPageData(SplashScreen(), splash),
        login: (login) => _addPageData(LoginScreen(), login),
        signUp: (signUp) => _addPageData(SignUpScreen(), signUp),
        userProfile: (userProfile) =>
            _addPageData(UserProfileScreen(), userProfile),
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
        (state.last.arguments as PageConfiguration).path != newRoute.path;
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

  void _setPageAction(PageAction action) {}

  void _addPageAction(action) {
    _setPageAction(action);
    addPage(action.page);
  }

  void _addAllAction(action) {
    addAll(action.pages);
  }

  void _addWidgetAction(action) {
    _setPageAction(action);
    pushWidget(action.widget, action.page);
  }

  void _replaceAction(action) {
    _setPageAction(action);
    replace(action.page);
  }

  void _replaceAllAction(action) {
    replaceAll(action.page);
  }

  List<Page> buildPages() {
    if (!splashFinished) {
      replaceAll(SplashConfig());
    } else {
      currentAction.map(
        none: (_) => {},
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
          currentAction = AddAll(pages: [LoginConfig(), SignUpConfig()]);
          break;
        case 'home':
          currentAction = ReplaceAll(page: HomeConfig());
          break;
        case 'userProfile':
          currentAction = AddAll(pages: [LoginConfig(), SignUpConfig(),UserProfileConfig()]);
          break;
        default:
          currentAction = ReplaceAll(page: SplashConfig());
          break;
      }
    }
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }
}
