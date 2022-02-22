import 'package:banki_flutter/features/shop/data/models/product_model.dart';

abstract class ShopLocalDataSource {
  /// Gets the cached [List<ProductModel>] which was gotten 
  /// the last time the user had an internet connection.
  /// 
  /// Throws [CacheException] if no cached data is present.
  Future<List<ProductModel>>? getAllLocalProducts();
  
  Future<void> cacheAllProducts(List<ProductModel> model);
}
