import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/gallery_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/gallery.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const galleryModel = GalleryModel(
    data: <StrapiImageDataModel>[
      StrapiImageDataModel(
        id: 43,
        attributes: StrapiImageAttributesModel(url: 'url'),
      ),
    ],
  );

  test(
    'should be a sub class of the Gallery entity',
    () async {
      expect(galleryModel, isA<Gallery>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('gallery_response.json'),
        );

        final result = GalleryModel.fromJson(jsonMap);

        expect(result, galleryModel);
      },
    );
  });
}
