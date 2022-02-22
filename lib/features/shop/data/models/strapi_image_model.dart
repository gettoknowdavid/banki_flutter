import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image.dart';

class StrapiImageModel extends StrapiImage {
  const StrapiImageModel({
    required StrapiImageDataModel data,
  }) : super(data: data);

  factory StrapiImageModel.fromJson(Map<String, dynamic> json) {
    return StrapiImageModel(data: StrapiImageDataModel.fromJson(json['data']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    final model = StrapiImageDataModel(
      id: data.id,
      attributes: StrapiImageAttributesModel(url: data.attributes.url),
    );
    json['data'] = model.toJson();
    return json;
  }
}
