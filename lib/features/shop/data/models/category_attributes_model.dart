// ignore_for_file: must_be_immutable

import 'package:banki_flutter/features/shop/domain/entities/category_attributes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_attributes_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryAttributesModel extends CategoryAttributes {
  const CategoryAttributesModel({required String? name}) : super(name: name);

  factory CategoryAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryAttributesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryAttributesModelToJson(this);
}
