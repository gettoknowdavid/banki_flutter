import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/gallery.dart';

class GalleryModel extends Gallery {
  const GalleryModel({
    required List<StrapiImageDataModel> data,
  }) : super(data: data);

  factory GalleryModel.fromJson(Map<String, dynamic> json) {
    return GalleryModel(
      data: List<StrapiImageDataModel>.from(
          json['data'].map((e) => StrapiImageDataModel.fromJson(e)).toList()),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};

    json['data'] = data.map(
      (e) => StrapiImageDataModel(
        id: e.id,
        attributes: StrapiImageAttributesModel(url: e.attributes.url),
      ).toJson(),
    );
    return json;
  }
}
