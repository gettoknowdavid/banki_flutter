import 'package:banki_flutter/api/graphql_api.dart';
import 'package:banki_flutter/core/error/exceptions.dart';
import 'package:banki_flutter/features/shop/data/datasources/remote/shop_remote_datasource_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../di/response.dart';
import 'shop_remote_datasource_impl_test.mocks.dart';

@GenerateMocks([GraphQLApi])
void main() {
  late ShopRemoteDataSourceImpl remoteDataSource;
  late MockGraphQLApi mockGqlApi;

  setUp(() {
    mockGqlApi = MockGraphQLApi();
    remoteDataSource = ShopRemoteDataSourceImpl(gqlApi: mockGqlApi);
  });

  void setUpMockResponseSuccess() {
    when(mockGqlApi.getProducts()).thenAnswer((_) async => tResponseModel);
  }

  void setUpMockResponseFailure() {
    when(mockGqlApi.getProducts()).thenAnswer((_) => null);
  }

  // test(
  //   'should perform a GET request with products being the endpoint',
  //   () async {
  //     when(mockClient.get(any, headers: anyNamed('headers'))).thenAnswer(
  //       (_) async => http.Response(fixture('response.json'), 200),
  //     );

  //     await remoteDataSource.getAllRemoteProducts();

  //     verify(
  //       mockClient.get(
  //         Uri.https('saya-strapi.herokuapp.com', '/api/products'),
  //         headers: {'Content-Type': 'application/json'},
  //       ),
  //     );
  //   },
  // );

  test(
    'should perform a GET request with products being the endpoint',
    () async {
      setUpMockResponseSuccess();

      await remoteDataSource.getAllRemoteProducts();

      verify(mockGqlApi.getProducts());
    },
  );

  test(
    'should return ProductResponse when the response is available',
    () async {
      setUpMockResponseSuccess();

      final result = await remoteDataSource.getAllRemoteProducts();

      expect(result, equals(tResponseModel));
    },
  );

  test(
    'should throw a ServerException if no ProductResponse is available',
    () async {
      setUpMockResponseFailure();

      final call = remoteDataSource.getAllRemoteProducts;

      expect(() => call(), throwsA(const TypeMatcher<ServerException>()));
    },
  );
}
