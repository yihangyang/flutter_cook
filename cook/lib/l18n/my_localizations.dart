import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyLocalizations {
  final Locale locale;
  MyLocalizations(this.locale);

  static MyLocalizations of(BuildContext context) {
    return Localizations.of(context, MyLocalizations);
  }
  static Map<String, Map<String, String>> _localizeValues = {};

  Future loadJson() async {
    // 1. load json datei
    final jsonString = await rootBundle.loadString("assets/json/i18n.json");
    // 2. parse json
    Map<String, dynamic> map =  json.decode(jsonString);
    _localizeValues = map.map((key, value) {
      return MapEntry(key, value.cast<String, String>());
    });
  }

  String get title {
    return _localizeValues[locale.languageCode]["title"];
  }
}