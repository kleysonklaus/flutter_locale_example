import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'localizations/app_home_localizations.dart';
import 'ui/screens/scafold_screen.dart';
import 'package:device_info_plus/device_info_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final String defaultLocale = Platform.localeName;
  print(defaultLocale);

  final List<Locale> systemLocales = WidgetsBinding.instance.window.locales;

  print(systemLocales);

  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  String deviceLanguage = '';
  try {
    if (Platform.isAndroid) {
      // Configuración para Android
      final AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      print(androidInfo.device);
      // deviceLanguage = androidInfo.device.deviceLocale.languageCode;
    } else if (Platform.isIOS) {
      // Configuración para iOS
      deviceLanguage = 'en'; // Establece inglés por defecto
    }
  } on PlatformException {
    deviceLanguage = "en"; // Establece inglés por defecto
  }

  print("final: $deviceLanguage");

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
