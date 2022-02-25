import 'package:banki_flutter/features/shop/domain/entities/product_image_attributes.dart';
import 'package:equatable/equatable.dart';

class ProductImageData extends Equatable {
  const ProductImageData({required this.id, required this.attributes});
  final String id;
  final ProductImageAttributes attributes;

  @override
  List<Object?> get props => [id, attributes];
}
