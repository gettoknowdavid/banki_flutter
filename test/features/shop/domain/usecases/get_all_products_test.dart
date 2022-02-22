import 'package:banki_flutter/core/usecase/usecase.dart';
import 'package:banki_flutter/features/shop/domain/entities/category.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_attributes.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_data.dart';
import 'package:banki_flutter/features/shop/domain/entities/gallery.dart';
import 'package:banki_flutter/features/shop/domain/entities/product.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_attributes.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_data.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image_attributes.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image_data.dart';
import 'package:banki_flutter/features/shop/domain/repositories/shop_repository.dart';
import 'package:banki_flutter/features/shop/domain/usecases/get_all_products.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../di/response.dart';

class MockShopRepository extends Mock implements ShopRepository {}

void main() {
  late MockShopRepository mockShopRepository;
  late GetAllProducts usecase;

  setUp(() {
    mockShopRepository = MockShopRepository();
    usecase = GetAllProducts(mockShopRepository);
  });



  test(
    'should get a list of all the products in the repository',
    () async {
      when(mockShopRepository.getAllProducts()).thenAnswer(
        (_) async => const Right(allTestProducts),
      );

      final result = await usecase(NoParams());

      expect(result, const Right(allTestProducts));

      verify(mockShopRepository.getAllProducts());

      verifyNoMoreInteractions(mockShopRepository);
    },
  );
}
