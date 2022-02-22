import 'package:banki_flutter/features/shop/data/models/product_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_data.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../di/response.dart';

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
}
