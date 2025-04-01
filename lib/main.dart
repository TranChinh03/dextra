import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/app/app.dart';
import 'package:dextra/presentation/locale/localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    EasyLocalization.ensureInitialized(),
    configureDependencies(),
  ]);

  // runApp(const App());
  runApp(
    EasyLocalization(
      supportedLocales: Localization().locales,
      path: 'assets/translations',
      fallbackLocale: Localization().defaultLocaleInfo.locale,
      startLocale: Localization().defaultLocaleInfo.locale,
      child: const App(),
    ),
  );
}
