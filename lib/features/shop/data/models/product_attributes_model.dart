import 'package:banki_flutter/features/shop/data/models/category_model.dart';
import 'package:banki_flutter/features/shop/data/models/gallery_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_image_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_attributes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_attributes_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductAttributesModel extends ProductAttributes {
  const ProductAttributesModel({
    required String name,
    required String description,
    required num price,
    required num rating,
    required String author,
    required CategoryModel category,
    required ProductImageModel featuredImage,
    required GalleryModel gallery,
  }) : super(
          name: name,
          description: description,
          price: price,
          rating: rating,
          author: author,
          category: category,
          featuredImage: featuredImage,
          gallery: gallery,
        );

  @override
  CategoryModel get category => super.category as CategoryModel;

  @override
  ProductImageModel get featuredImage =>
      super.featuredImage as ProductImageModel;

  @override
  GalleryModel get gallery => super.gallery as GalleryModel;

  factory ProductAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAttributesModelToJson(this);
}
