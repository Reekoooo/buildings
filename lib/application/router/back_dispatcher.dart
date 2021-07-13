import 'package:building/application/router/router_delegate.dart';
import 'package:flutter/material.dart';

class BuildingBackButtonDispatcher extends RootBackButtonDispatcher{
  final BuildingRouterDelegate _routerDelegate;

  BuildingBackButtonDispatcher(this._routerDelegate): super();

  @override
  Future<bool> didPopRoute() {

    return _routerDelegate.popRoute();
  }
}