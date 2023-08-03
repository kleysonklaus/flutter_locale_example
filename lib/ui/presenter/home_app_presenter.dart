import '../interface/home_app_interface.dart';
import '../mapper/home_app_mapper.dart';
import '../models/home_app_model.dart';

class HomeAppPresenter {
  late HomeAppInterface _interface;

  HomeAppPresenter(this._interface);

  late HomeAppModel modelUi;

  final mapper = HomeAppMapper();

  void setUi() {
    modelUi = HomeAppModel();
    _interface.setUi(modelUi);
  }
}
