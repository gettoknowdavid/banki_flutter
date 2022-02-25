import 'package:banki_flutter/core/usecase/usecase.dart';
import 'package:banki_flutter/features/shop/domain/repositories/shop_repository.dart';
import 'package:banki_flutter/features/shop/domain/usecases/get_all_products.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../di/response.dart';
import 'get_all_products_test.mocks.dart';

@GenerateMocks([ShopRepository])
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
        (_) async => const Right(tResponseModel),
      );

      final result = await usecase(NoParams());

      expect(result, const Right(tResponseModel));

      verify(mockShopRepository.getAllProducts());

      verifyNoMoreInteractions(mockShopRepository);
    },
  );
}
