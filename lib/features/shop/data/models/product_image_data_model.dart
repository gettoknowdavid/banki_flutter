import 'package:banki_flutter/features/shop/data/models/product_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_image_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_image_data_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductImageDataModel extends ProductImageData {
  const ProductImageDataModel({
    required String id,
    required ProductImageAttributesModel attributes,
  }) : super(id: id, attributes: attributes);

  @override
  ProductImageAttributesModel get attributes =>
      super.attributes as ProductImageAttributesModel;

  factory ProductImageDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductImageDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageDataModelToJson(this);
}
