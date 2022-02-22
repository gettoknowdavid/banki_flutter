import 'dart:convert';

import 'package:banki_flutter/features/shop/data/models/category_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/category_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/category_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/category.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const categoryModel = CategoryModel(
    data: CategoryDataModel(
      id: 3,
      attributes: CategoryAttributesModel(name: 'Chairs'),
    ),
  );

  test(
    'should be a sub class of the Category entity',
    () async {
      expect(categoryModel, isA<Category>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when JSON is passed',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixture('category_response.json'),
        );

        final result = CategoryModel.fromJson(jsonMap);

        expect(result, categoryModel);
      },
    );
  });
}
