import '../models/home_app_model.dart';

/// core
abstract class Mapper<T> {
  T fromMap(Map<String, dynamic> json);
  Map<String, dynamic> toMap(T data);
}

class HomeAppMapper implements Mapper<HomeAppModel> {
  @override
  HomeAppModel fromMap(Map<String, dynamic> json) {
    return HomeAppModel(
      title: json['title'],
      subTitle: json['subTitle'],
      isActive: json['isActive'],
      number: json['number'],
      decimal: json['decimal'],
    );
  }

  @override
  Map<String, dynamic> toMap(HomeAppModel data) {
    return {
      "title": data.title,
      "subTitle": data.subTitle,
      "isActive": data.isActive,
      "number": data.number,
      "decimal": data.decimal,
    };
  }
}
