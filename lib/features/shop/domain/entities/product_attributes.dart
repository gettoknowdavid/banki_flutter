import 'package:banki_flutter/features/shop/domain/entities/category.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_image.dart';
import 'package:banki_flutter/features/shop/domain/entities/gallery.dart';
import 'package:equatable/equatable.dart';

class ProductAttributes extends Equatable {
  const ProductAttributes({
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.author,
    required this.category,
    required this.featuredImage,
    required this.gallery,
  });

  final String name;
  final String description;
  final num price;
  final num rating;
  final String author;
  final Category category;
  final ProductImage featuredImage;
  final Gallery gallery;

  @override
  List<Object?> get props => [
        name,
        description,
        price,
        rating,
        author,
        category,
        featuredImage,
        gallery
      ];
}
