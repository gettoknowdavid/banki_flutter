import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/product_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../di/response.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  const productModel = ProductModel(
    data: ProductDataModel(
      id: 1,
      attributes: productAttributesModel,
    ),
  );

  test(
    'should be a sub class of the Product entity',
    () async {
      expect(productModel, isA<Product>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('product_response.json'),
        );

        final result = ProductModel.fromJson(jsonMap);

        expect(result, productModel);
      },
    );
  });
}
