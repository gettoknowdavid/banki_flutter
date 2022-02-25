import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/product_response_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/products_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_response_data.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../di/response.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  const productResponseDataModel = ProductResponseDataModel(
    products: ProductsModel(data: allProductDatumModel),
  );

  test(
    'should be a sub class of the ProductResponseData entity',
    () async {
      expect(
        productResponseDataModel,
        isA<ProductResponseData>(),
      );
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('response_data.json'),
        );

        final result = ProductResponseDataModel.fromJson(jsonMap);

        expect(result, productResponseDataModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = productResponseDataModel.toJson();
        final jsonString = fixture('response_data.json');
        final expectedJson = json.decode(jsonString);
        expect(result, expectedJson);
      },
    );
  });
}
