import 'package:banki_flutter/features/shop/data/models/category_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/category.dart';

class CategoryModel extends Category {
  const CategoryModel({required CategoryDataModel data}) : super(data: data);

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(data: CategoryDataModel.fromJson(json['data']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['data'] = data;
    return json;
  }
}
