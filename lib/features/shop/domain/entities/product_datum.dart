import 'package:banki_flutter/features/shop/domain/entities/product_attributes.dart';
import 'package:equatable/equatable.dart';

class ProductDatum extends Equatable {
  const ProductDatum({required this.id, required this.attributes});
  final String id;
  final ProductAttributes attributes;

  @override
  List<Object?> get props => [id, attributes];
}
