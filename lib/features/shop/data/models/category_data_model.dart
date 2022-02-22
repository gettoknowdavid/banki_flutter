import 'package:banki_flutter/features/shop/data/models/category_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_data.dart';

class CategoryDataModel extends CategoryData {
  const CategoryDataModel({
    required int id,
    required CategoryAttributesModel attributes,
  }) : super(id: id, attributes: attributes);

  factory CategoryDataModel.fromJson(Map<String, dynamic> json) {
    return CategoryDataModel(
      id: int.parse(json['id']),
      attributes: CategoryAttributesModel.fromJson(json['attributes']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    final attributesModel = CategoryAttributesModel(name: attributes.name);
    json['id'] = id.toString();
    json['attributes'] = attributesModel.toJson();
    return json;
  }
}
