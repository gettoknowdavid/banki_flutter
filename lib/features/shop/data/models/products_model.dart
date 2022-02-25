import 'package:banki_flutter/features/shop/data/models/product_datum_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/products.dart';
import 'package:json_annotation/json_annotation.dart';

part 'products_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductsModel extends Products {
  const ProductsModel({required List<ProductDatumModel> data})
      : super(data: data);

  @override
  List<ProductDatumModel> get data => super.data as List<ProductDatumModel>;

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsModelToJson(this);
}
