
import 'package:building/application/router/page_action.dart';
import 'package:building/application/router/ui_pages.dart';
import 'package:test/test.dart';

void main() {

  test('',(){
    final splash = SplashConfig(currentPageAction: NoPageAction());
    final path = splash.path;
    expect(path,equals('/splash'));
  });

}