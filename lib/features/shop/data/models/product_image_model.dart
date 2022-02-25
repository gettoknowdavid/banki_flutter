import 'package:banki_flutter/features/shop/data/models/product_image_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_image.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_image_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductImageModel extends ProductImage {
  const ProductImageModel({required ProductImageDataModel data})
      : super(data: data);

  @override
  ProductImageDataModel get data => super.data as ProductImageDataModel;

  factory ProductImageModel.fromJson(Map<String, dynamic> json) =>
      _$ProductImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageModelToJson(this);
}
