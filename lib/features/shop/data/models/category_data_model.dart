import 'package:banki_flutter/features/shop/data/models/category_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_data_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryDataModel extends CategoryData {
  const CategoryDataModel({
    required String id,
    required CategoryAttributesModel attributes,
  }) : super(id: id, attributes: attributes);

  @override
  CategoryAttributesModel get attributes =>
      super.attributes as CategoryAttributesModel;

  factory CategoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDataModelToJson(this);
}
