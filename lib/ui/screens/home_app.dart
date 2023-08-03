import 'package:flutter/material.dart';

import '../interface/home_app_interface.dart';
import '../presenter/home_app_presenter.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> implements HomeAppInterface {
  late HomeAppPresenter presenter;

  @override
  void initState() {
    presenter = HomeAppPresenter(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            "Example Locale Languaje",
          ),
        ),
        body: Text(
          "asd",
        ),
      ),
    );
  }

  @override
  void showLoading() {
    // TODO: implement showLoading
  }
}
