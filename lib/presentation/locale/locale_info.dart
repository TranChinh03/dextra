import 'package:flutter/material.dart';

class LocaleInfo {
  String localeKey;
  String localeDisplayName;
  Locale locale;

  LocaleInfo({
    required this.localeKey,
    required this.localeDisplayName,
    required this.locale,
  });
}
