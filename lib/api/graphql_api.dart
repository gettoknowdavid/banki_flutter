import 'package:banki_flutter/core/utils/gql_query.dart';
import 'package:banki_flutter/features/shop/data/models/product_response_model.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

abstract class GraphQLApi {
  Future<ProductResponseModel>? getProducts();
}

@LazySingleton(as: GraphQLApi)
class GraphQLApiImpl implements GraphQLApi {
  GraphQLApiImpl({required this.client});
  final GraphQLClient client;

  @override
  Future<ProductResponseModel>? getProducts() async {
    final QueryResult<ProductResponseModel>? _result = await client.query(
      QueryOptions(document: gql(GqlQuery.allProductsQuery)),
    );

    return ProductResponseModel.fromJson(_result!.data!);
  }
}
