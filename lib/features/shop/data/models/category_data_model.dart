import 'package:banki_flutter/features/shop/data/models/category_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_data.dart';

class CategoryDataModel extends CategoryData {
  const CategoryDataModel({
    required int id,
    required CategoryAttributesModel attributes,
  }) : super(id: id, attributes: attributes);

  factory CategoryDataModel.fromJson(Map<String, dynamic> json) {
    return CategoryDataModel(
      id: (json['id']).toInt(),
      attributes: json['attributes'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['attributes'] = attributes;
    return json;
  }
}
