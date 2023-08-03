import '../models/home_app_model.dart';

class HomeAppMapper {
  static HomeAppModel fromMap(Map<String, dynamic> json) {
    return HomeAppModel(
      title: json['title'],
      subTitle: json['subTitle'],
      isActive: json['isActive'],
      number: json['number'],
      decimal: json['decimal'],
    );
  }

  static Map<String, dynamic> toMap(HomeAppModel data) {
    return {
      "title": data.title,
      "subTitle": data.subTitle,
      "isActive": data.isActive,
      "number": data.number,
      "decimal": data.decimal,
    };
  }
}
