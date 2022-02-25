import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/product_response_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_response_model.dart';
import 'package:banki_flutter/features/shop/data/models/products_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../di/response.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  const productResponseModel = ProductResponseModel(
    data: ProductResponseDataModel(
      products: ProductsModel(data: allProductDatumModel),
    ),
  );

  test(
    'should be a sub class of the ProductResponse entity',
    () async {
      expect(productResponseModel, isA<ProductResponse>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('response.json'),
        );

        final result = ProductResponseModel.fromJson(jsonMap);

        expect(result, productResponseModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = productResponseModel.toJson();
        final jsonString = fixture('response.json');
        final expectedJson = json.decode(jsonString);
        expect(result, expectedJson);
      },
    );
  });
}
