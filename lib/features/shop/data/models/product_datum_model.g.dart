// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_datum_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDatumModel _$ProductDatumModelFromJson(Map<String, dynamic> json) =>
    ProductDatumModel(
      id: json['id'] as String,
      attributes: ProductAttributesModel.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductDatumModelToJson(ProductDatumModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };
