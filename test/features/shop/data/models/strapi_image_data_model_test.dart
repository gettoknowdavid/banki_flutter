import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image_data.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const strapiImageDataModel = StrapiImageDataModel(
    id: 3,
    attributes: StrapiImageAttributesModel(url: 'url'),
  );

  test(
    'should be a sub class of the StrapiImageData entity',
    () async {
      expect(
        strapiImageDataModel,
        isA<StrapiImageData>(),
      );
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('image_data_response.json'),
        );

        final result = StrapiImageDataModel.fromJson(jsonMap);

        expect(result, strapiImageDataModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = strapiImageDataModel.toJson();

        expect(result, {"id": "3", "attributes": {"url": "url"}});
      },
    );
  });
}
