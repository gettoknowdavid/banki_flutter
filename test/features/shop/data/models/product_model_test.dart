import 'package:banki_flutter/features/shop/data/models/product_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../di/response.dart';

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
}
