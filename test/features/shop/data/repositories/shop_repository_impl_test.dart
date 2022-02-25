import 'package:banki_flutter/core/error/exceptions.dart';
import 'package:banki_flutter/core/error/failure.dart';
import 'package:banki_flutter/core/platform/network_service.dart';
import 'package:banki_flutter/features/shop/data/datasources/local/shop_local_datasource.dart';
import 'package:banki_flutter/features/shop/data/datasources/remote/shop_remote_datasource.dart';
import 'package:banki_flutter/features/shop/data/repositories/shop_repository_impl.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_response.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../di/response.dart';
import 'shop_repository_impl_test.mocks.dart';

@GenerateMocks([ShopRemoteDataSource, ShopLocalDataSource, NetworkService])
void main() {
  ShopRepositoryImpl? repository;
  MockShopRemoteDataSource? mockRemoteDataSource;
  MockShopLocalDataSource? mockLocalDataSource;
  MockNetworkService? mockNetworkService;

  setUp(() {
    mockRemoteDataSource = MockShopRemoteDataSource();
    mockLocalDataSource = MockShopLocalDataSource();
    mockNetworkService = MockNetworkService();
    repository = ShopRepositoryImpl(
      remote: mockRemoteDataSource!,
      local: mockLocalDataSource!,
      network: mockNetworkService!,
    );
  });

  const ProductResponse tProductResponse = tResponseModel;

  group('Shop', () {
    test(
      'should check if the device is connected to the internet',
      () async {
        when(mockRemoteDataSource?.getAllRemoteProducts()).thenAnswer(
          (_) async => tResponseModel,
        );

        when(mockNetworkService?.isConn).thenAnswer((_) async => true);

        repository?.getAllProducts();

        verify(mockNetworkService?.isConn);
      },
    );
  });

  group('Device is online', () {
    setUp(() {
      when(mockNetworkService?.isConn).thenAnswer((_) async => true);
    });

    test(
      'should return remote data when the call to the remote data source is successful.',
      () async {
        when(mockRemoteDataSource?.getAllRemoteProducts())
            .thenAnswer((_) async => tResponseModel);

        final result = await repository?.getAllProducts();

        verify(mockRemoteDataSource?.getAllRemoteProducts());

        expect(result, equals(const Right(tProductResponse)));
      },
    );

    test(
      'should cache the list of products locally when the call to the remote data source is successful.',
      () async {
        when(mockRemoteDataSource?.getAllRemoteProducts())
            .thenAnswer((_) async => tResponseModel);

        await repository?.getAllProducts();

        verify(mockRemoteDataSource?.getAllRemoteProducts());
        verify(mockLocalDataSource?.cacheAllProducts(tResponseModel));
      },
    );

    test(
      'should return Sever Failure when the call to the remote data source is unsuccessful.',
      () async {
        when(mockRemoteDataSource?.getAllRemoteProducts()).thenThrow(
          const ServerException(),
        );

        final result = await repository?.getAllProducts();

        verify(mockRemoteDataSource?.getAllRemoteProducts());
        verifyZeroInteractions(mockLocalDataSource);
        expect(result, equals(Left(ServerFailure())));
      },
    );
  });

  group('Device is offline', () {
    setUp(() {
      when(mockNetworkService?.isConn).thenAnswer((_) async => false);
    });

    test(
      'should return the last cached data if present',
      () async {
        when(mockLocalDataSource?.getAllLocalProducts()).thenAnswer(
          (_) async => tResponseModel,
        );

        final result = await repository?.getAllProducts();

        verifyZeroInteractions(mockRemoteDataSource);
        verify(mockLocalDataSource?.getAllLocalProducts());
        expect(result, equals(const Right(tProductResponse)));
      },
    );
    test(
      'should return Cache Failure when there is no cached data present.',
      () async {
        when(mockLocalDataSource?.getAllLocalProducts())
            .thenThrow(const CacheException());

        final result = await repository?.getAllProducts();

        verifyZeroInteractions(mockRemoteDataSource);
        verify(mockLocalDataSource?.getAllLocalProducts());
        expect(result, equals(Left(CacheFailure())));
      },
    );
  });
}
