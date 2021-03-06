import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/gallery_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_image_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/gallery.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const galleryModel = GalleryModel(
    data: <ProductImageDataModel>[
      ProductImageDataModel(
        id: "43",
        attributes: ProductImageAttributesModel(url: 'url'),
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

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = galleryModel.toJson();

        expect(result, {
          "data": [
            {
              "id": "43",
              "attributes": {"url": "url"}
            }
          ]
        });
      },
    );
  });
}
