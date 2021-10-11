import 'package:building/application/router/building_dispatcher.dart';
import 'package:building/application/router/building_router_delegate.dart';
import 'package:building/application/router/pages_state_notifier.dart';
import 'package:building/application/router/router_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pagesProvider = StateNotifierProvider<PagesStateNotifier,List<Page>>((ref) => PagesStateNotifier(ref.read));
final routerDelegateProvider = ChangeNotifierProvider((ref)=>BuildingRouterDelegate(ref.read));
final dispatcherProvider = Provider((ref)=>BuildingDispatcher(ref.read));
final parserProvider = Provider((ref)=>BuildingParser());