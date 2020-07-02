import 'package:cook/l18n/my_localizations.dart';
import 'package:flutter/material.dart';

class MyLocalizationsDelegate extends LocalizationsDelegate<MyLocalizations> {
  static MyLocalizationsDelegate delegate = MyLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
    return ['en', 'zh', 'de'].contains(locale.languageCode);
  }

  @override
  bool shouldReload(LocalizationsDelegate<MyLocalizations> old) {
    return false;
  }

  @override
  Future<MyLocalizations> load(Locale locale) async {
    final localizations = MyLocalizations(locale);
    await localizations.loadJson();
    return localizations;
  }
}