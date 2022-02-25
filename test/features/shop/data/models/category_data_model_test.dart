import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/category_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/category_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_data.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const categoryDataModel = CategoryDataModel(
    id: "3",
    attributes: CategoryAttributesModel(name: 'Chairs'),
  );

  test(
    'should be a sub class of the CategoryData entity',
    () async {
      expect(categoryDataModel, isA<CategoryData>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('category_data_response.json'),
        );

        final result = CategoryDataModel.fromJson(jsonMap);

        expect(result, categoryDataModel);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = categoryDataModel.toJson();

        expect(result, {
          "id": "3",
          "attributes": {"name": "Chairs"}
        });
      },
    );
  });
}
