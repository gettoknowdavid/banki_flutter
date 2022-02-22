import 'package:banki_flutter/features/shop/data/models/category_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/category_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/category_model.dart';
import 'package:banki_flutter/features/shop/data/models/gallery_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_data_model.dart';
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
      price: (json['price']).toDouble(),
      rating: (json['rating']).toDouble(),
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
    json['price'] = price.toInt();
    json['rating'] = rating.toInt();
    json['author'] = author;
    json['category'] = CategoryModel(
      data: CategoryDataModel(
        id: category.data.id,
        attributes: CategoryAttributesModel(
          name: category.data.attributes.name,
        ),
      ),
    ).toJson();
    json['featuredImage'] = StrapiImageModel(
      data: StrapiImageDataModel(
        id: featuredImage.data.id,
        attributes: StrapiImageAttributesModel(
          url: featuredImage.data.attributes.url,
        ),
      ),
    ).toJson();
    json['gallery'] = GalleryModel(
      data: gallery.data
          .map(
            (e) => StrapiImageDataModel(
              id: e.id,
              attributes: StrapiImageAttributesModel(url: e.attributes.url),
            ),
          )
          .toList(),
    ).toJson();
    return json;
  }
}
