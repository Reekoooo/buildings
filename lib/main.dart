import 'dart:async';

import 'package:building/application/router/back_dispatcher.dart';
import 'package:building/application/router/router_parser.dart';
import 'package:building/application/router/ui_pages.dart';
import 'package:building/domain/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';
import 'application/router/router_delegate.dart';

void main() {
  runApp(BuildingApp());
}

class BuildingApp extends StatefulWidget {
  @override
  _BuildingAppState createState() => _BuildingAppState();
}



class _BuildingAppState extends State<BuildingApp> {
  final appState = AppState();
  final parser = BuildingParser();
  BuildingRouterDelegate? delegate ;
  BuildingBackButtonDispatcher? dispatcher ;
  StreamSubscription? _linkSubscription;

 @override
  void initState() {
    super.initState();
    delegate = BuildingRouterDelegate(appState);
    delegate?.setNewRoutePath(SplashConfig());
    dispatcher = BuildingBackButtonDispatcher(delegate!);
    initPlatformState();
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  } // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {

   final initialUri = await getInitialUri() ?? Uri.parse('/');

    delegate?.parseRoute(await getInitialUri() ?? Uri.parse('/'));
    // Attach a listener to the string links stream
    _linkSubscription = linkStream.listen((String? uri) {
      if (!mounted) return;
      setState(() {
        delegate?.parseRoute(Uri.parse(uri ?? '') );
      });
    }, onError: (Object err) {
      print('Got error $err');
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          routerDelegate:delegate!,
          routeInformationParser: parser,
          backButtonDispatcher:  dispatcher,


        );
      }

  }




// final localeNotifier = StateNotifierProvider((ref)=> LocaleNotifier());
//
// class LocaleNotifier extends StateNotifier {
//   LocaleNotifier() : super(const Locale('en', 'US'));
// }
//
//
//
// class MyApp extends HookWidget{
//   @override
//   Widget build(BuildContext context) {
//     final _local = useProvider(localeNotifier.state);
//
//     return MaterialApp(
//       theme: AppTheme.theme,
//       localizationsDelegates: [
//         // ... app-specific localization delegate[s] here
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: [
//         const Locale('en', 'US'), // English
//         const Locale('ar', 'EG'), // Arabic
//         // ... other locales the app supports
//       ],
//       locale: _local,
//       routes: <String, WidgetBuilder>{'/': (context) => Home()},
//     );
//   }
// }
//
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top ,
//           padding: EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [AppTheme.colorBgGradientStart, AppTheme.colorBgGradientEnd],
//               tileMode: TileMode.repeated,
//             ),
//           ),
//           alignment: Alignment.topLeft,
//           child: Column(
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SvgPicture.asset('assets/building_logo.svg',
//                       color: AppTheme.colorHeaderIcon,
//                       height: 57, width: 57, semanticsLabel: 'Logo'),
//                   Text(
//                     "عمارتي",
//                     textAlign: TextAlign.right,
//                     style: AppTheme.headerTitle
//                   ),
//                 ],
//               ),
//               Expanded(
//                 child: SingleChildScrollView(
//                   physics: ClampingScrollPhysics(),
//                   child: Container(
//                     padding: const EdgeInsets.all(8),
//                     decoration: const BoxDecoration(
//                       color: AppTheme.colorFormBg,
//                       borderRadius: const BorderRadius.all(const Radius.circular(20)),
//                     ),
//                     alignment: Alignment.center,
//                     child: Column(
//                       children: [
//                         const Text('تسجيل الدخول'),
//                         TextFormField(
//
//                           decoration: const InputDecoration(
//                             labelText: 'البريد الاليكتروني',
//                             border: const OutlineInputBorder(
//                               borderRadius: const BorderRadius.all(
//                                 const Radius.circular(20),
//                               ),
//                             ),
//                           ),
//                         ),
//                         TextFormField(
//                           decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(20),
//                             ),
//                           )),
//                         ),
//                         Row(
//                           children: [
//                             PressText(),
//                             Expanded(
//                               child: Container(),
//                             ),
//                             Text('تذكرني '),
//                             Checkbox(
//                                 value: false,
//                                 onChanged: (state) {
//                                   print('state is $state');
//                                 })
//                           ],
//                         ),
//                         TextButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                               primary: Color(0xff4859EE),
//                               onPrimary: Colors.white,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(20)))),
//                           child: Container(
//                               width: 324, child: Center(child: Text('دخول'))),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             SvgPicture.asset('assets/apple_logo.svg',
//                                 height: 32,
//                                 width: 32,
//                                 semanticsLabel: 'Apple Logo'),
//                             SvgPicture.asset('assets/google_logo.svg',
//                                 height: 32,
//                                 width: 32,
//                                 semanticsLabel: 'Google Logo'),
//                             SvgPicture.asset('assets/facebook_logo.svg',
//                                 height: 32,
//                                 width: 32,
//                                 semanticsLabel: 'Facebook Logo'),
//                           ],
//                         ),
//                         Text('ــ أو ــ'),
//                         TextButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                               primary: Color(0xff4859EE),
//                               onPrimary: Colors.white,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(20)))),
//                           child: Container(
//                               width: 324,
//                               child: Center(child: Text('انشاء حساب جديد'))),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class PressText extends StatefulWidget {
//   @override
//   _PressTextState createState() => _PressTextState();
// }
//
// class _PressTextState extends State<PressText> {
//   TapGestureRecognizer _tapRecognizer;
//
//   @override
//   void initState() {
//     super.initState();
//     _tapRecognizer = TapGestureRecognizer()..onTap = _handleTap;
//   }
//
//   @override
//   void dispose() {
//     _tapRecognizer.dispose();
//     super.dispose();
//   }
//
//   void _handleTap() {
//     //TODO
//     print("tapped");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Text.rich(
//       TextSpan(
//         text: 'نسيت كلمة السر؟ ',
//         style: TextStyle(color: Colors.black),
//         children: <InlineSpan>[
//           TextSpan(
//             text: 'أضغط هنا',
//             style: TextStyle(
//               color: Color(0xff4859EE),
//               decoration: TextDecoration.underline,
//               decorationStyle: TextDecorationStyle.wavy,
//             ),
//             recognizer: _tapRecognizer,
//           ),
//         ],
//       ),
//     );
//   }
// }
