import 'package:banki_flutter/features/shop/data/models/category_model.dart';
import 'package:banki_flutter/features/shop/data/models/gallery_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_attributes.dart';

class ProductAttributesModel extends ProductAttributes {
  const ProductAttributesModel({
    required String name,
    required String description,
    required double price,
    required double rating,
    required String author,
    required CategoryModel category,
    required StrapiImageModel featuredImage,
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

  factory ProductAttributesModel.fromJson(Map<String, dynamic> json) {
    return ProductAttributesModel(
      name: json['name'],
      description: json['description'],
      price: json['price'],
      rating: json['rating'],
      author: json['author'],
      category: CategoryModel.fromJson(json['category']),
      featuredImage: StrapiImageModel.fromJson(json['featuredImage']),
      gallery: GalleryModel.fromJson(json['gallery']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};

    json['name'] = name;
    json['description'] = description;
    json['price'] = price;
    json['rating'] = rating;
    json['author'] = author;
    json['category'] = category;
    json['featuredImage'] = featuredImage;
    json['gallery'] = gallery;
    return json;
  }
}
