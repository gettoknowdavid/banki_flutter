import 'package:banki_flutter/features/shop/data/models/product_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_data.dart';

class ProductModel extends Product {
  const ProductModel({required ProductDataModel data}) : super(data: data);

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(data: json['data']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['data'] = data;
    return json;
  }
}
