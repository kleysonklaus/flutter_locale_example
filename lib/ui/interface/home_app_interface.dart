import '../models/home_app_model.dart';

abstract class HomeAppInterface {
  void showLoading();
  void setUi(HomeAppModel modelInterface);
}
