import 'package:banki_flutter/features/shop/data/models/product_image_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/gallery.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gallery_model.g.dart';

@JsonSerializable(explicitToJson: true)
class GalleryModel extends Gallery {
  const GalleryModel({
    required List<ProductImageDataModel> data,
  }) : super(data: data);

  @override
  List<ProductImageDataModel> get data =>
      super.data as List<ProductImageDataModel>;

  factory GalleryModel.fromJson(Map<String, dynamic> json) =>
      _$GalleryModelFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryModelToJson(this);
}
