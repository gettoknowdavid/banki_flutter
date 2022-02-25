import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/product_datum_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_datum.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../di/response.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  const productDatumModel = ProductDatumModel(
    id: "1",
    attributes: productAttributesModel,
  );

  test(
    'should be a sub class of the ProductData entity',
    () async {
      expect(productDatumModel, isA<ProductDatum>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('product_data_response.json'),
        );

        final result = ProductDatumModel.fromJson(jsonMap);

        expect(result, productDatumModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = productDatumModel.toJson();
        final jsonString = fixture('product_data_response.json');
        final expectedJson = json.decode(jsonString);
        expect(result, expectedJson);
      },
    );
  });
}
