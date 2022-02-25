// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponseDataModel _$ProductResponseDataModelFromJson(
        Map<String, dynamic> json) =>
    ProductResponseDataModel(
      products:
          ProductsModel.fromJson(json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductResponseDataModelToJson(
        ProductResponseDataModel instance) =>
    <String, dynamic>{
      'products': instance.products.toJson(),
    };
