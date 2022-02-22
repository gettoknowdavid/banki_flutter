import 'package:banki_flutter/features/shop/data/models/gallery_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/gallery.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const galleryModel = GalleryModel(
    data: <StrapiImageDataModel>[
      StrapiImageDataModel(attributes: StrapiImageAttributesModel(url: 'url')),
    ],
  );

  test(
    'should be a sub class of the Gallery entity',
    () async {
      expect(galleryModel, isA<Gallery>());
    },
  );
}
