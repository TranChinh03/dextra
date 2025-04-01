import 'package:dextra/presentation/assets/fonts/fonts.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    fontFamily: FontFamily.inter,
    scaffoldBackgroundColor: const AppLightColor().backgroundApp,
    appBarTheme: const AppBarTheme(
      // backgroundColor: AppLightColor.whiteColor,
      elevation: 0,
      // foregroundColor: AppLightColor.textTitleIconColor,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      // cursorColor: AppLightColor.greenSuccessBrandColor,
      // selectionHandleColor: AppLightColor.greenSuccessBrandColor,
      // selectionColor: AppLightColor.greenSuccessBrandColor,
    ),
    cupertinoOverrideTheme: const CupertinoThemeData(
      // primaryColor: AppLightColor.greenSuccessBrandColor,
    ),
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.light,
      // accentColor: AppLightColor.greenSuccessBrandColor,
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    fontFamily: FontFamily.inter,
    // scaffoldBackgroundColor: const AppDarkColor().white,
    appBarTheme: const AppBarTheme(
      // backgroundColor: AppDarkColor,
      elevation: 0,
      // foregroundColor: AppDarkColor.textTitleIconColor,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      // cursorColor: AppDarkColor.greenSuccessBrandColor,
      // selectionHandleColor: AppDarkColor.greenSuccessBrandColor,
      // selectionColor: AppDarkColor.greenSuccessBrandColor,
    ),
    cupertinoOverrideTheme: const CupertinoThemeData(
      // primaryColor: AppDarkColor.greenSuccessBrandColor,
    ),
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.dark,
      // accentColor: AppDarkColor.greenSuccessBrandColor,
    ),
  );
}
