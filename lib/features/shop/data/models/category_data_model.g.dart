// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDataModel _$CategoryDataModelFromJson(Map<String, dynamic> json) =>
    CategoryDataModel(
      id: json['id'] as String,
      attributes: CategoryAttributesModel.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryDataModelToJson(CategoryDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };
