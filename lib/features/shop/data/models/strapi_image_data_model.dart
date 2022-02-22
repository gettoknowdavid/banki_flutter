import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image_data.dart';

class StrapiImageDataModel extends StrapiImageData {
  const StrapiImageDataModel({
    required int id,
    required StrapiImageAttributesModel attributes,
  }) : super(id: id, attributes: attributes);

  factory StrapiImageDataModel.fromJson(Map<String, dynamic> json) {
    return StrapiImageDataModel(
      id: int.parse(json['id']),
      attributes: StrapiImageAttributesModel.fromJson(json['attributes']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    final model = StrapiImageAttributesModel(url: attributes.url);
    json['id'] = id.toString();
    json['attributes'] = model.toJson();
    return json;
  }
}
