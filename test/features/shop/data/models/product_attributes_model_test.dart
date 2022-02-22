import 'package:banki_flutter/features/shop/domain/entities/product_attributes.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../di/response.dart';

void main() {
  test(
    'should be a sub class of the ProductAttributes entity',
    () async {
      expect(productAttributesModel, isA<ProductAttributes>());
    },
  );
}
