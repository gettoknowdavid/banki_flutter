import 'package:banki_flutter/features/shop/domain/entities/category_attributes.dart';

class CategoryAttributesModel extends CategoryAttributes {
  const CategoryAttributesModel({required String? name}) : super(name: name);

  factory CategoryAttributesModel.fromJson(Map<String, dynamic> json) {
    return CategoryAttributesModel(
      name: json["name"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    return json;
  }
}
