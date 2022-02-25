import 'package:banki_flutter/features/shop/data/models/product_response_model.dart';

abstract class ShopRemoteDataSource {
  /// Calls the https://saya-strapi.herokuapp.com/api endpoint
  ///
  /// Throws a [ServerException] for any error code
  Future<ProductResponseModel>? getAllRemoteProducts();
}
