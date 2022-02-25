import 'package:banki_flutter/features/shop/domain/entities/product_image_attributes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_image_attributes_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductImageAttributesModel extends ProductImageAttributes {
  const ProductImageAttributesModel({required String url}) : super(url: url);

  factory ProductImageAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$ProductImageAttributesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageAttributesModelToJson(this);
}
