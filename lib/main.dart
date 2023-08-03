import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'localizations/app_home_localizations.dart';
import 'ui/screens/scafold_screen.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      supportedLocales: const [
        Locale("en", "US"),
        Locale("es", "ES"),
      ],
      locale: const Locale("es", "PE"),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // Agrega el delegate de MaterialLocalizations para español
        AppHomeLocalizations.delegate,
      ],
      home: const ScaffoldScreen(),
    );
  }
}
