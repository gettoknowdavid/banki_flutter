import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/product_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_image_attributes.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const productImageAttributesModel = ProductImageAttributesModel(url: 'url');

  test(
    'should be a sub class of the ProductImageAttributes entity',
    () async {
      expect(
        productImageAttributesModel,
        isA<ProductImageAttributes>(),
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

        final result = ProductImageAttributesModel.fromJson(jsonMap);

        expect(result, productImageAttributesModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = productImageAttributesModel.toJson();

        expect(result, {"url": "url"});
      },
    );
  });
}
