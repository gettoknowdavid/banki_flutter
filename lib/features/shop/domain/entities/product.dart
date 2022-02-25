import 'package:banki_flutter/features/shop/domain/entities/product_datum.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  const Product({required this.data});
  final ProductDatum data;

  @override
  List<Object?> get props => [data];
}
