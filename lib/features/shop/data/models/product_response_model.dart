import 'package:banki_flutter/features/shop/data/models/product_response_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductResponseModel extends ProductResponse {
  const ProductResponseModel({required ProductResponseDataModel data})
      : super(data: data);

  @override
  ProductResponseDataModel get data => super.data as ProductResponseDataModel;

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseModelToJson(this);
}
