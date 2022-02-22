import 'package:banki_flutter/features/shop/data/models/category_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_attributes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const categoryAttributesModel = CategoryAttributesModel(name: 'Chair');

  test(
    'should be a sub class of the CategoryAttributes entity',
    () async {
      expect(
        categoryAttributesModel,
        isA<CategoryAttributes>(),
      );
    },
  );
}
