import 'package:building/application/router/router_provider.dart';
import 'package:building/application/router/ui_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BuildingRouterDelegate extends RouterDelegate<PageConfiguration>
    with ChangeNotifier,PopNavigatorRouterDelegateMixin{

  final Reader _reader;
  List<Page> _pages = [];

  final _onPopPage ;
  BuildingRouterDelegate(this._reader)
      :navigatorKey = GlobalKey(),
        _onPopPage = _reader(pagesProvider.notifier).onPopPage

  {
    _reader(pagesProvider.notifier).addListener((state) {
      _pages = state;
      print('delegate state : $state');
      notifyListeners();
    });
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey ;


  // @override
  // Future<bool> popRoute() {
  //  return _reader(pagesProvider.notifier).popRoute();
  // }

  @override
  Future<void> setNewRoutePath(configuration) {
    _reader(pagesProvider.notifier).replaceAll(configuration);
    return SynchronousFuture(null);
  }

  @override
  Widget build(BuildContext context) {
    print('navigator is building with pages:$_pages');
    return Navigator(
      key: navigatorKey,
      onPopPage: _onPopPage ,
      pages: _pages,
    );
  }

}