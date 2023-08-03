import 'package:flutter/material.dart';

import 'app_home_localizations.dart';

class AppHomeDelegate extends LocalizationsDelegate<AppHomeLocalizations> {
  const AppHomeDelegate();

  @override
  bool isSupported(Locale locale) {
    return ["es", "en"].contains(locale.languageCode);
  }

  @override
  Future<AppHomeLocalizations> load(Locale locale) async {
    final AppHomeLocalizations localizations = AppHomeLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(AppHomeDelegate old) => false;
}
