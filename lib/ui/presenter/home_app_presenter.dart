import '../interface/home_app_interface.dart';
import '../mapper/home_app_mapper.dart';
import '../models/home_app_model.dart';

class HomeAppPresenter {
  late HomeAppInterface _interface;

  HomeAppPresenter(this._interface);

  late HomeAppModel modelUi;
  final HomeAppMapper homeAppMapper = HomeAppMapper();

  final mapper = HomeAppMapper();

  void getModelUi(Map<String, dynamic> languaje) {
    modelUi = homeAppMapper.fromMap(languaje);
    _interface.setUi(modelUi);
  }
}
