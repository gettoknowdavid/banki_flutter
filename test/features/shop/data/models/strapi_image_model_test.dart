import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const strapiImageModel = StrapiImageModel(
    data: StrapiImageDataModel(
      id: 3,
      attributes: StrapiImageAttributesModel(url: 'url'),
    ),
  );

  test(
    'should be a sub class of the StrapiImage entity',
    () async {
      expect(
        strapiImageModel,
        isA<StrapiImage>(),
      );
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('image_response.json'),
        );

        final result = StrapiImageModel.fromJson(jsonMap);

        expect(result, strapiImageModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = strapiImageModel.toJson();

        expect(result, {
          "data": {
            "id": "3",
            "attributes": {"url": "url"}
          }
        });
      },
    );
  });
}
