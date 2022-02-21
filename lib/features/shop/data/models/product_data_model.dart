import 'package:banki_flutter/features/shop/data/models/product_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_data.dart';

class ProductDataModel extends ProductData {
  const ProductDataModel({
    required int id,
    required ProductAttributesModel attributes,
  }) : super(id: id, attributes: attributes);

  factory ProductDataModel.fromJson(Map<String, dynamic> json) {
    return ProductDataModel(
      id: json['id'],
      attributes: json['attributes'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['attributes'] = attributes;
    return json;
  }
}
