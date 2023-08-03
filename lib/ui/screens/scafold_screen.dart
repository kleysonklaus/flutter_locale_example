import 'package:flutter/material.dart';
import 'package:flutter_locale/localizations/app_home_localizations.dart';

import 'home_app.dart';

class ScaffoldScreen extends StatelessWidget {
  const ScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final languaje = AppHomeLocalizations.of(context)!.getJsonTranslate();

    print(languaje);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Example Locale Languaje"),
      ),
      body: HomeApp(languaje: languaje!),
    );
  }
}
