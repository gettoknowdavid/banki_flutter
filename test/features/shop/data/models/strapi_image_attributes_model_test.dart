import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image_attributes.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const strapiImageAttributesModel = StrapiImageAttributesModel(url: 'url');

  test(
    'should be a sub class of the StrapiImageAttributes entity',
    () async {
      expect(
        strapiImageAttributesModel,
        isA<StrapiImageAttributes>(),
      );
    },
  );
  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('image_attributes_response.json'),
        );

        final result = StrapiImageAttributesModel.fromJson(jsonMap);

        expect(result, strapiImageAttributesModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = strapiImageAttributesModel.toJson();

        expect(result, {"url": "url"});
      },
    );
  });
}
