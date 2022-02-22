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
    json['data'] = data;
    return json;
  }
}
