// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attributes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttributesModel _$ProductAttributesModelFromJson(
        Map<String, dynamic> json) =>
    ProductAttributesModel(
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as num,
      rating: json['rating'] as num,
      author: json['author'] as String,
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      featuredImage: ProductImageModel.fromJson(
          json['featuredImage'] as Map<String, dynamic>),
      gallery: GalleryModel.fromJson(json['gallery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductAttributesModelToJson(
        ProductAttributesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'rating': instance.rating,
      'author': instance.author,
      'category': instance.category.toJson(),
      'featuredImage': instance.featuredImage.toJson(),
      'gallery': instance.gallery.toJson(),
    };
