import 'package:building/application/router/ui_pages.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_action.freezed.dart';

//enum PageState { none, addPage, addAll, addWidget, pop, replace, replaceAll }

// class PageAction {
//   PageState state;
//   PageConfiguration? page;
//   List<PageConfiguration>? pages;
//   Widget? widget;
//
//   PageAction({this.state = PageState.none, this.page, this.pages , this.widget});
//
//   @override
//   String toString() {
//     return 'Page action ,state:$state , page:$page, pages: $pages , widget: widget';
//
//   }
// }

@freezed
class PageAction with _$PageAction{
  // const factory PageAction({
  //   PageConfiguration? page,
  //   List<PageConfiguration>? pages,
  //   Widget? widget}) = _PageAction;

  const factory PageAction.none() = NoPageAction;
  const factory PageAction.addPage({required PageConfiguration page}) = AddPage;
  const factory PageAction.addAll({required List<PageConfiguration> pages}) = AddAll;
  const factory PageAction.addWidget({required PageConfiguration page,required Widget widget}) = AddWidget;
  const factory PageAction.pop() = Pop;
  const factory PageAction.replace({required PageConfiguration page}) = Replace;
  const factory PageAction.replaceAll({required PageConfiguration page}) = ReplaceAll;

}
