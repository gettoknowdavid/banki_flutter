import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/category_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_attributes.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const categoryAttributesModel = CategoryAttributesModel(name: 'Chairs');

  test(
    'should be a sub class of the CategoryAttributes entity',
    () async {
      expect(
        categoryAttributesModel,
        isA<CategoryAttributes>(),
      );
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('category_attributes_response.json'),
        );

        final result = CategoryAttributesModel.fromJson(jsonMap);

        expect(result, categoryAttributesModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = categoryAttributesModel.toJson();

        expect(result, {"name": "Chairs"});
      },
    );
  });
}
