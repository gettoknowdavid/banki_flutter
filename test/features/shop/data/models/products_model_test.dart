import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/products_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/products.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../di/response.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  const productsModel = ProductsModel(data: allProductDatumModel);

  test(
    'should be a sub class of the Products entity',
    () async {
      expect(productsModel, isA<Products>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('products_response.json'),
        );

        final result = ProductsModel.fromJson(jsonMap);

        expect(result, productsModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = productsModel.toJson();
        final jsonString = fixture('products_response.json');
        final expectedJson = json.decode(jsonString);
        expect(result, expectedJson);
      },
    );
  });
}
