import 'package:banki_flutter/features/shop/data/models/category_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/category_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const categoryDataModel = CategoryDataModel(
    id: 1,
    attributes: CategoryAttributesModel(name: 'Chair'),
  );

  test(
    'should be a sub class of the CategoryData entity',
    () async {
      expect(
        categoryDataModel,
        isA<CategoryData>(),
      );
    },
  );
}
