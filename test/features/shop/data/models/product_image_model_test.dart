import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/product_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_image_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_image_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_image.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const productImageModel = ProductImageModel(
    data: ProductImageDataModel(
      id: "3",
      attributes: ProductImageAttributesModel(url: 'url'),
    ),
  );

  test(
    'should be a sub class of the ProductImage entity',
    () async {
      expect(
        productImageModel,
        isA<ProductImage>(),
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

        final result = ProductImageModel.fromJson(jsonMap);

        expect(result, productImageModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = productImageModel.toJson();

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
