import 'package:banki_flutter/features/shop/data/models/category_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/category.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryModel extends Category {
  const CategoryModel({required CategoryDataModel data}) : super(data: data);

  @override
  CategoryDataModel get data => super.data as CategoryDataModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
