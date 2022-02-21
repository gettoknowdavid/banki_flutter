import 'package:banki_flutter/features/shop/domain/entities/strapi_image_data.dart';
import 'package:equatable/equatable.dart';

class StrapiImages extends Equatable {
  const StrapiImages({required this.data});
  final List<StrapiImageData> data;

  @override
  List<Object?> get props => [data];
}
