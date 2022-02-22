import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image_data.dart';

class StrapiImageDataModel extends StrapiImageData {
  const StrapiImageDataModel({
    int? id,
    required StrapiImageAttributesModel attributes,
  }) : super(id: id, attributes: attributes);

  factory StrapiImageDataModel.fromJson(Map<String, dynamic> json) {
    return StrapiImageDataModel(
      id: json['id'] != null ? int.parse(json['id']) : null,
      attributes: StrapiImageAttributesModel.fromJson(json['attributes']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['attributes'] = attributes;
    return json;
  }
}
