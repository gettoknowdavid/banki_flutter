import 'package:banki_flutter/features/shop/domain/entities/strapi_image_attributes.dart';
import 'package:equatable/equatable.dart';

class StrapiImage extends Equatable {
  const StrapiImage({required this.id, required this.attributes});
  final int id;
  final StrapiImageAttributes attributes;

  @override
  List<Object?> get props => [id, attributes];
}
