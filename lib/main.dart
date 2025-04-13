import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/app/app.dart';
import 'package:dextra/presentation/locale/localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyA1y5rYWMj3QX1HiIEKYxZKrztzxhUYrvs",
      authDomain: "dextra-c3ce1.firebaseapp.com",
      projectId: "dextra-c3ce1",
      storageBucket: "dextra-c3ce1.firebasestorage.app",
      messagingSenderId: "277167601761",
      appId: "1:277167601761:web:e36325ea4d54a77663d220",
      measurementId: "G-4NC360W3KC",
    ),
  );

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
