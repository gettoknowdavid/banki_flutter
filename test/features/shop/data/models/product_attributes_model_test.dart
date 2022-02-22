import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/product_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_attributes.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../di/response.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  test(
    'should be a sub class of the ProductAttributes entity',
    () async {
      expect(productAttributesModel, isA<ProductAttributes>());
    },
  );

    group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('product_attributes_response.json'),
        );

        final result = ProductAttributesModel.fromJson(jsonMap);

        expect(result, productAttributesModel);
      },
    );
  });
}
