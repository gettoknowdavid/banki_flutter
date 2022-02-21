import 'package:banki_flutter/features/shop/domain/entities/product_data.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  const Product({required this.data});
  final ProductData data;

  @override
  List<Object?> get props => [data];
}
