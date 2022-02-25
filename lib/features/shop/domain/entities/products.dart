import 'package:banki_flutter/features/shop/domain/entities/product_datum.dart';
import 'package:equatable/equatable.dart';

class Products extends Equatable {
  const Products({required this.data});
  final List<ProductDatum> data;

  @override
  List<Object?> get props => [data];
}
