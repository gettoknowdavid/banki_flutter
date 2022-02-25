import 'package:banki_flutter/features/shop/data/models/product_response_model.dart';

abstract class ShopLocalDataSource {
  /// Gets the cached [ProductResponseModel] which was gotten
  /// the last time the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<ProductResponseModel>? getAllLocalProducts();

  Future<void>? cacheAllProducts(ProductResponseModel model);
}
