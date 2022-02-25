import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/product_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_image_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_image_data.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const productImageDataModel = ProductImageDataModel(
    id: "3",
    attributes: ProductImageAttributesModel(url: 'url'),
  );

  test(
    'should be a sub class of the ProductImageData entity',
    () async {
      expect(
        productImageDataModel,
        isA<ProductImageData>(),
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

        final result = ProductImageDataModel.fromJson(jsonMap);

        expect(result, productImageDataModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = productImageDataModel.toJson();

        expect(result, {
          "id": "3",
          "attributes": {"url": "url"}
        });
      },
    );
  });
}
