import 'package:banki_flutter/api/graphql_api.dart';
import 'package:banki_flutter/core/error/exceptions.dart' as exception;
import 'package:banki_flutter/features/shop/data/datasources/remote/shop_remote_datasource.dart';
import 'package:banki_flutter/features/shop/data/models/product_response_model.dart';

class ShopRemoteDataSourceImpl implements ShopRemoteDataSource {
  const ShopRemoteDataSourceImpl({required this.gqlApi});

  final GraphQLApi gqlApi;

  @override
  Future<ProductResponseModel>? getAllRemoteProducts() async {


    final _result = await gqlApi.getProducts();

    if (_result != null) {
      return _result;
    } else {
      throw const exception.ServerException();
    }
  }
}
