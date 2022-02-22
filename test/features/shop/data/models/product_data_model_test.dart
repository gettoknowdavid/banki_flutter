import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/product_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_data.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../di/response.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  const productDataModel = ProductDataModel(
    id: 1,
    attributes: productAttributesModel,
  );

  test(
    'should be a sub class of the ProductData entity',
    () async {
      expect(productDataModel, isA<ProductData>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('product_data_response.json'),
        );

        final result = ProductDataModel.fromJson(jsonMap);

        expect(result, productDataModel);
      },
    );
  });
}
