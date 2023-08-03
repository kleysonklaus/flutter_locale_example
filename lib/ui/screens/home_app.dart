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

class _HomeAppState extends State<HomeApp> implements HomeAppInterface {
  late HomeAppPresenter presenter;
  late HomeAppModel modelUi;

  @override
  void initState() {
    presenter = HomeAppPresenter(this);
    presenter.getModelUi(widget.languaje);
    super.initState();
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
