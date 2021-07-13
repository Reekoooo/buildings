import 'dart:async';

import 'package:building/application/router/page_action.dart';
import 'package:building/application/router/ui_pages.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String LOGGED_IN_KEY = 'loggedIn';

class AppState extends ChangeNotifier {

  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;
  bool _splashFinished = false;
  bool get splashFinished => _splashFinished;

  PageAction _currentAction = NoPageAction();

  PageAction get currentAction => _currentAction;

  set currentAction(PageAction action) {
    //action.page?.uiPage != Pages.Splash
    if ( !(action is SplashConfig)) {
      _splashFinished = true;
    }
    _currentAction = action;
    notifyListeners();
  }

  AppState() {
    print('App State initialized');
    getLoggedInState();
    Timer(const Duration(milliseconds: 2000), () {
      setSplashFinished();
    });

  }

  void resetCurrentAction() {
    _currentAction = NoPageAction();
  }

  void setSplashFinished() {
    if(!_splashFinished){
    _splashFinished = true;
    if (_loggedIn) {
      _currentAction = ReplaceAll(page: HomeConfig(currentPageAction: NoPageAction()));
          //PageAction(state: PageState.replaceAll, page: homePageConfiguration);
    } else {
      _currentAction = ReplaceAll(page: LoginConfig(currentPageAction: NoPageAction()));
          //PageAction(state: PageState.replaceAll, page: loginPageConfiguration);
    }
    notifyListeners();
    }
  }

  void login() {
    _loggedIn = true;
    saveLoginState(loggedIn);
    _currentAction = ReplaceAll(page: HomeConfig(currentPageAction: NoPageAction()));
       // PageAction(state: PageState.replaceAll, page: homePageConfiguration);
    notifyListeners();
  }

  void logOut() {
    _loggedIn = false;
    saveLoginState(loggedIn);
    _currentAction = ReplaceAll(page: LoginConfig(currentPageAction: NoPageAction()));
        //PageAction(state: PageState.replaceAll, page: loginPageConfiguration);
    notifyListeners();
  }

  void saveLoginState(bool loggedIn) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(LOGGED_IN_KEY, loggedIn);
  }

  void getLoggedInState() async {
    final prefs = await SharedPreferences.getInstance();
    _loggedIn = prefs.getBool(LOGGED_IN_KEY) ?? false;
  }
}
