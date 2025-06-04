import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/app/app.dart';
import 'package:dextra/presentation/locale/localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb;

// // Change to false to use live database instance.
// const USE_DATABASE_EMULATOR = true;
// // The port we've set the Firebase Database emulator to run on via the
// // `firebase.json` configuration file.
// const emulatorPort = 9000;
// // Android device emulators consider localhost of the host machine as 10.0.2.2
// // so let's use that if running on Android.
// final emulatorHost =
//     (!kIsWeb && defaultTargetPlatform == TargetPlatform.android)
//         ? '10.0.2.2'
//         : 'localhost';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyA1y5rYWMj3QX1HiIEKYxZKrztzxhUYrvs",
        authDomain: "dextra-c3ce1.firebaseapp.com",
        databaseURL:
            "https://dextra-c3ce1-default-rtdb.asia-southeast1.firebasedatabase.app",
        projectId: "dextra-c3ce1",
        storageBucket: "dextra-c3ce1.firebasestorage.app",
        messagingSenderId: "277167601761",
        appId: "1:277167601761:web:e36325ea4d54a77663d220",
        measurementId: "G-4NC360W3KC"),
  );

  // if (USE_DATABASE_EMULATOR) {
  //   FirebaseDatabase.instance.useDatabaseEmulator(emulatorHost, emulatorPort);
  // }

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
