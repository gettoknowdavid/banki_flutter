import 'package:banki_flutter/features/shop/domain/entities/products.dart';
import 'package:equatable/equatable.dart';

class ProductResponseData extends Equatable {
  const ProductResponseData({required this.products});
  final Products products;

  @override
  List<Object?> get props => [products];
}
