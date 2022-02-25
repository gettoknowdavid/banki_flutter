import 'package:banki_flutter/features/shop/data/models/products_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_response_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_response_data_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductResponseDataModel extends ProductResponseData {
  const ProductResponseDataModel({required ProductsModel products})
      : super(products: products);

  @override
  ProductsModel get products => super.products as ProductsModel;

  factory ProductResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseDataModelToJson(this);
}
