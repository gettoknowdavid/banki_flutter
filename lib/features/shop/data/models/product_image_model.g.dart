// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImageModel _$ProductImageModelFromJson(Map<String, dynamic> json) =>
    ProductImageModel(
      data:
          ProductImageDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductImageModelToJson(ProductImageModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
