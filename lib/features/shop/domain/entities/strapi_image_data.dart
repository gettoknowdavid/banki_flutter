import 'package:banki_flutter/features/shop/domain/entities/strapi_image_attributes.dart';
import 'package:equatable/equatable.dart';

class StrapiImageData extends Equatable {
  const StrapiImageData({this.id, required this.attributes});
  final int? id;
  final StrapiImageAttributes attributes;

  @override
  List<Object?> get props => [id, attributes];
}
