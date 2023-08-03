import 'package:flutter/material.dart';

import '../interface/home_app_interface.dart';
import '../models/home_app_model.dart';
import '../presenter/home_app_presenter.dart';

class HomeApp extends StatefulWidget {
  final Map<String, dynamic> languaje;
  const HomeApp({
    super.key,
    required this.languaje,
  });

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp>
    with WidgetsBindingObserver
    implements HomeAppInterface {
  late HomeAppPresenter presenter;
  late HomeAppModel modelUi;

  // String currentDefaultSystemLocale;
  // List<Locale> currentSystemLocales;

  // Here we read the current locale values
  // void setCurrentValues() {
  //   currentSystemLocales = WidgetsBinding.instance.window.locales;
  //   currentDefaultSystemLocale = Platform.localeName;
  // }

  @override
  void initState() {
    presenter = HomeAppPresenter(this);
    presenter.getModelUi(widget.languaje);
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  void didChangeLocales(List<Locale>? locale) {
    print("SE CAMBIAAAAAAAAAAAAAAAA");
    print(locale);
    // This is run when system locales are changed
    super.didChangeLocales(locale);
    // Update state with the new values and redraw controls
    setState(() {
      // setCurrentValues();
    });
  }

  static const TextStyle style = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            modelUi.title ?? 'X',
            style: style,
          ),
          Text(
            modelUi.subTitle ?? 'X',
            style: style,
          ),
          Text(
            modelUi.isActive?.toString() ?? 'X',
            style: style,
          ),
          Text(
            modelUi.number?.toString() ?? 'X',
            style: style,
          ),
          Text(
            modelUi.decimal?.toString() ?? 'X',
            style: style,
          ),
        ],
      ),
    );
  }

  @override
  void showLoading() {
    // TODO: implement showLoading
  }

  @override
  void setUi(HomeAppModel modelInterface) => modelUi = modelInterface;
}
