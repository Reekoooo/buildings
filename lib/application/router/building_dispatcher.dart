import 'package:building/application/router/router_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BuildingDispatcher extends RootBackButtonDispatcher{
  final Reader _reader;
  BuildingDispatcher(this._reader);
  // @override
  // Future<bool> didPopRoute() {
  //   print('Back button dispatcher didPopRoute() fired ');
  //   return _reader(routerDelegateProvider.notifier).popRoute();
  // }
}