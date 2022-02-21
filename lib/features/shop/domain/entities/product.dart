import 'package:banki_flutter/features/shop/domain/entities/product_attributes.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  const Product({required this.id, required this.attributes});
  final int id;
  final ProductAttributes attributes;

  @override
  List<Object?> get props => [id, attributes];
}
