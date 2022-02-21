import 'package:banki_flutter/features/shop/domain/entities/strapi_image_data.dart';
import 'package:equatable/equatable.dart';

class StrapiImage extends Equatable {
  const StrapiImage({required this.data});
  final StrapiImageData data;

  @override
  List<Object?> get props => [data];
}
