import 'package:banki_flutter/features/shop/domain/entities/strapi_image_attributes.dart';

class StrapiImageAttributesModel extends StrapiImageAttributes {
  const StrapiImageAttributesModel({required String url}) : super(url: url);

  factory StrapiImageAttributesModel.fromJson(Map<String, dynamic> json) {
    return StrapiImageAttributesModel(url: json['url']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['url'] = url;
    return json;
  }
}
