// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImageDataModel _$ProductImageDataModelFromJson(
        Map<String, dynamic> json) =>
    ProductImageDataModel(
      id: json['id'] as String,
      attributes: ProductImageAttributesModel.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductImageDataModelToJson(
        ProductImageDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };
