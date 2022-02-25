import 'dart:convert';

import 'package:banki_flutter/common/app_constants.dart';
import 'package:banki_flutter/core/error/exceptions.dart';
import 'package:banki_flutter/features/shop/data/datasources/local/shop_local_datasource_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../di/response.dart';
import '../../../../../fixtures/fixture_reader.dart';
import 'shop_local_datasource_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  late MockSharedPreferences mockSharedPreferences;
  late ShopLocalDataSourceImpl localDataSource;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    localDataSource = ShopLocalDataSourceImpl(
      sharedPreferences: mockSharedPreferences,
    );
  });

  group('getLastListOfProducts', () {
    test(
      'should return List of Products from Database when there is one in the Cache',
      () async {
        when(mockSharedPreferences.getString(any)).thenReturn(
          fixture('response.json'),
        );

        final result = await localDataSource.getAllLocalProducts();

        verify(mockSharedPreferences.getString(CACHED_PRODUCTS_LIST));

        expect(result, equals(tResponseModel));
      },
    );

    test(
      'should throw CacheException when there is no cache value',
      () async {
        when(mockSharedPreferences.getString(any)).thenReturn(null);

        final call = localDataSource.getAllLocalProducts;

        expect(() => call(), throwsA(const TypeMatcher<CacheException>()));
      },
    );
  });

  group('cacheProductResponse', () {
    test(
      'should call SharedPreferences to cache the data',
      () async {
        final expectedString = json.encode(tResponseModel);

        when(mockSharedPreferences.setString(any, expectedString))
            .thenAnswer((_) async => true);

        await localDataSource.cacheAllProducts(tResponseModel);

        verify(
          mockSharedPreferences.setString(CACHED_PRODUCTS_LIST, expectedString),
        );
      },
    );
  });
}
