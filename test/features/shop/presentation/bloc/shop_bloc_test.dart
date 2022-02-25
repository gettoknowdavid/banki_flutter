import 'package:banki_flutter/common/app_constants.dart';
import 'package:banki_flutter/core/error/failure.dart';
import 'package:banki_flutter/core/usecase/usecase.dart';
import 'package:banki_flutter/features/shop/domain/usecases/get_all_products.dart';
import 'package:banki_flutter/features/shop/presentation/bloc/shop_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../di/response.dart';
import 'shop_bloc_test.mocks.dart';

@GenerateMocks([GetAllProducts])
void main() {
  late ShopBloc bloc;
  late MockGetAllProducts mockGetAllProducts;

  setUp(() {
    mockGetAllProducts = MockGetAllProducts();
    bloc = ShopBloc(getAllProducts: mockGetAllProducts);
  });

  test(
    'initial state should be empty',
    () async {
      expect(bloc.state, equals(ShopInitial()));
    },
  );

  test(
    'should get ProductResponse from GetAllProducts usecase',
    () async* {
      when(mockGetAllProducts(any)).thenAnswer(
        (_) async => const Right(tResponse),
      );

      bloc.add(ShopProductsGet());
      await untilCalled(mockGetAllProducts(any));

      verify(mockGetAllProducts(NoParams()));
    },
  );

  test(
    'should emit [ShopInitial(), ShopLoadInProgress(), ShopLoadSuccess()] when load succeeds',
    () async* {
      when(mockGetAllProducts(any)).thenAnswer(
        (_) async => const Right(tResponse),
      );

      final expected = [
        ShopInitial(),
        ShopLoadInProgress(),
        const ShopLoadSuccess(model: tResponse),
      ];

      expectLater(bloc.state, emitsInOrder(expected));

      bloc.add(ShopProductsGet());
    },
  );

  test(
    'should emit [ShopLoadInProgress(), ShopLoadFailure()] when load fails',
    () async* {
      when(mockGetAllProducts(any)).thenAnswer(
        (_) async => Left(ServerFailure()),
      );

      final expected = [
        ShopInitial(),
        const ShopLoadFailure(message: SERVER_FAILURE_MESSAGE),
      ];

      expectLater(bloc.state, emitsInOrder(expected));

      bloc.add(ShopProductsGet());
    },
  );

  test(
    'should emit [ShopLoadInProgress(), ShopLoadFailure()] when load fails with proper error message',
    () async* {
      when(mockGetAllProducts(any)).thenAnswer(
        (_) async => Left(CacheFailure()),
      );

      final expected = [
        ShopInitial(),
        const ShopLoadFailure(message: CACHE_FAILURE_MESSAGE),
      ];

      expectLater(bloc.state, emitsInOrder(expected));

      bloc.add(ShopProductsGet());
    },
  );
}
