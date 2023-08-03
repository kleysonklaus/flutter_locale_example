import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_home_delegate.dart';

class AppHomeLocalizations {
  final Locale locale;

  AppHomeLocalizations(this.locale);

  static AppHomeLocalizations? of(BuildContext context) =>
      Localizations.of<AppHomeLocalizations>(context, AppHomeLocalizations);

  static const LocalizationsDelegate<AppHomeLocalizations> delegate =
      AppHomeDelegate();

  Map<String, dynamic>? _localizedStrings;

  Future<bool> load() async {
    final String jsonString = await rootBundle
        .loadString("assets/locale/${locale.languageCode}/app_home.json");

    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) => MapEntry(key, value));
    return true;
  }

  String? translate(String key) => _localizedStrings![key];

  Map<String, dynamic>? getJsonTranslate() => _localizedStrings;
}
