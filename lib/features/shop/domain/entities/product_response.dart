import 'package:banki_flutter/features/shop/domain/entities/product_response_data.dart';
import 'package:equatable/equatable.dart';

class ProductResponse extends Equatable {
  const ProductResponse({required this.data});
  final ProductResponseData data;

  @override
  List<Object?> get props => [data];
}
