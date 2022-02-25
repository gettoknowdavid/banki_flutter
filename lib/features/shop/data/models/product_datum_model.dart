import 'package:banki_flutter/features/shop/data/models/product_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_datum_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductDatumModel extends ProductDatum {
  const ProductDatumModel({
    required String id,
    required ProductAttributesModel attributes,
  }) : super(id: id, attributes: attributes);

  @override
  ProductAttributesModel get attributes =>
      super.attributes as ProductAttributesModel;

  factory ProductDatumModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDatumModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDatumModelToJson(this);
}
