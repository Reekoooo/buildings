import 'package:flutter/material.dart';

class AppTheme {
  //static const colorBgGradientStart = const Color(0xff1e1010);
  static const colorBgGradientStart = const Color(0xffffffff);
  static const colorBgGradientEnd = const Color(0xffedca50);

  //static const colorHeaderTitle =   Colors.white;
  //static const colorHeaderIcon =   Colors.white;
  static const colorHeaderIcon =   Colors.black;
  static const colorHeaderTitle =   Colors.black;
  static const colorPrimary = Color(0xff4859EE);
  static const colorFormBg = const Color(0x33c4c4c4);

  static ThemeData get theme {
    return ThemeData.light().copyWith(
      primaryColor: colorPrimary,

    );
  }

  static TextStyle get headerTitle => TextStyle(
        fontSize: 64,
        color: colorHeaderTitle,
      );

  // static InputDecorationTheme _inputDecorationTheme({
  //   baseColor: Color,
  //   textColor: Color,
  // }) {
  //   return InputDecorationTheme(
  //     border: OutlineInputBorder(borderSide: BorderSide(color: baseColor)),
  //     enabledBorder:
  //     OutlineInputBorder(borderSide: BorderSide(color: baseColor)),
  //     focusedBorder:
  //     OutlineInputBorder(borderSide: BorderSide(color: baseColor)),
  //     errorBorder: OutlineInputBorder(borderSide: BorderSide(color: colorRed)),
  //     errorStyle: TextStyle(
  //       fontSize: 12,
  //       fontFamily: fontFamilyEdmondsansRegular,
  //       color: colorRed,
  //     ),
  //     focusedErrorBorder:
  //     OutlineInputBorder(borderSide: BorderSide(color: colorRed)),
  //     labelStyle: TextStyle(
  //       fontSize: 16,
  //       fontFamily: fontFamilyEdmondsansMedium,
  //       color: baseColor,
  //     ),
  //     helperStyle: TextStyle(
  //       fontSize: 12,
  //       fontFamily: fontFamilyEdmondsansRegular,
  //       color: colorGrey128,
  //     ),
  //   );


}
