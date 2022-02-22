import 'package:banki_flutter/features/shop/data/models/category_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/category_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/category_model.dart';
import 'package:banki_flutter/features/shop/data/models/gallery_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_data.dart';

class ProductDataModel extends ProductData {
  const ProductDataModel({
    required int id,
    required ProductAttributesModel attributes,
  }) : super(id: id, attributes: attributes);

  factory ProductDataModel.fromJson(Map<String, dynamic> json) {
    return ProductDataModel(
      id: json['id'],
      attributes: ProductAttributesModel.fromJson(json['attributes']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['attributes'] = ProductAttributesModel(
      name: attributes.name,
      description: attributes.description,
      price: attributes.price,
      rating: attributes.rating,
      author: attributes.author,
      category: CategoryModel(
        data: CategoryDataModel(
          id: attributes.category.data.id,
          attributes: CategoryAttributesModel(
            name: attributes.category.data.attributes.name,
          ),
        ),
      ),
      featuredImage: StrapiImageModel(
        data: StrapiImageDataModel(
          id: attributes.featuredImage.data.id,
          attributes: StrapiImageAttributesModel(
            url: attributes.featuredImage.data.attributes.url,
          ),
        ),
      ),
      gallery: GalleryModel(
        data: attributes.gallery.data.map(
          (e) {
            return StrapiImageDataModel(
              id: e.id,
              attributes: StrapiImageAttributesModel(url: e.attributes.url),
            );
          },
        ).toList(),
      ),
    ).toJson();
    return json;
  }
}
