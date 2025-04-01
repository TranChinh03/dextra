import 'package:dextra/presentation/locale/locale_info.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

enum LocaleKey { en, vi, zh }

class Localization {
  static final Localization _instance = Localization._internal();

  factory Localization() {
    return _instance;
  }
  Localization._internal();

  BuildContext? _context;
  final List<LocaleInfo> _supportedLocales = [
    // LocaleInfo(
    //     localeKey: LocaleKey.vi.name,
    //     localeDisplayName: 'Tiếng Việt',
    //     locale: const Locale('vi', 'VN')),
    LocaleInfo(
      localeKey: LocaleKey.en.name,
      localeDisplayName: 'English',
      locale: const Locale('en', 'US'),
    ),
  ];

  void initContext(BuildContext context) {
    _context = context;
  }

  Locale? get currentLocale => _context?.locale ?? const Locale('vi', 'VN');

  List<Locale> get locales => _supportedLocales.map((e) => e.locale).toList();

  List<LocaleInfo> get localesInfo => _supportedLocales;

  LocaleInfo get defaultLocaleInfo => _supportedLocales.firstWhere(
        (element) => element.localeKey == LocaleKey.en.name,
      );

  LocaleInfo getLocaleInfoByLanguageCode(String languageCode) {
    LocaleInfo? localeInfo = _supportedLocales.firstWhereOrNull(
      (element) => element.localeKey == languageCode,
    );
    return localeInfo ?? defaultLocaleInfo;
  }

  String? get appLanguage {
    return null;
  }

  Future<void> updateLocale(BuildContext context, Locale locale) {
    return context.setLocale(locale);
  }
}
