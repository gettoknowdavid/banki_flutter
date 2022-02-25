// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponseModel _$ProductResponseModelFromJson(
        Map<String, dynamic> json) =>
    ProductResponseModel(
      data: ProductResponseDataModel.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductResponseModelToJson(
        ProductResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
