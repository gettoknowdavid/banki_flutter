import 'package:banki_flutter/features/shop/domain/entities/product_image_data.dart';
import 'package:equatable/equatable.dart';

class ProductImage extends Equatable {
  const ProductImage({required this.data});
  final ProductImageData data;

  @override
  List<Object?> get props => [data];
}
