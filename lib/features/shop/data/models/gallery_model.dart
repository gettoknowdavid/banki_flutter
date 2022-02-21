import 'package:banki_flutter/features/shop/data/models/strapi_image_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/gallery.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image_data.dart';

class GalleryModel extends Gallery {
  const GalleryModel({
    required List<StrapiImageDataModel> data,
  }) : super(data: data);

  factory GalleryModel.fromJson(Map<String, dynamic> json) {
    return GalleryModel(data: json['data']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['data'] = data;
    return json;
  }
}
