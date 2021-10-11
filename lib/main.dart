import 'dart:io';

import 'package:building/application/router/router_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHttpOverrides extends HttpOverrides{
  ByteData data;
  MyHttpOverrides(this.data);
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    context?.setTrustedCertificatesBytes(data.buffer.asUint8List(),password: 'Metmenow21021980');
    return super.createHttpClient(context)
      ..badCertificateCallback = (
        (X509Certificate cert,String host,int port)=>true
    );

  }
}

Future<bool> addSelfSignedCertificate()async{
  ByteData data = await rootBundle.load('assets/raw/cert.p12');
  HttpOverrides.global = new MyHttpOverrides(data);
  return true;
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  assert(await addSelfSignedCertificate());
  runApp(ProviderScope(child: BuildingApp()));
}

class BuildingApp extends ConsumerWidget {
  const BuildingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,watch) {
    final delegate = watch(routerDelegateProvider);
    final parser = watch(parserProvider);
    final dispatcher = watch(dispatcherProvider);
    return  MaterialApp.router(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routerDelegate:delegate,
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
