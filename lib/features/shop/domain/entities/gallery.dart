import 'package:banki_flutter/features/shop/domain/entities/product_image_data.dart';
import 'package:equatable/equatable.dart';

class Gallery extends Equatable {
  const Gallery({required this.data});
  final List<ProductImageData> data;

  @override
  List<Object?> get props => [data];
}
