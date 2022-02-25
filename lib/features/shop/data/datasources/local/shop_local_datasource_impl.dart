import 'dart:convert';

import 'package:banki_flutter/common/app_constants.dart';
import 'package:banki_flutter/core/error/exceptions.dart';
import 'package:banki_flutter/features/shop/data/datasources/local/shop_local_datasource.dart';
import 'package:banki_flutter/features/shop/data/models/product_response_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ShopLocalDataSource)
class ShopLocalDataSourceImpl implements ShopLocalDataSource {
  ShopLocalDataSourceImpl({required this.sharedPreferences});
  final SharedPreferences sharedPreferences;

  @override
  Future<void>? cacheAllProducts(ProductResponseModel model) async {
    final value = json.encode(model.toJson());
    await sharedPreferences.setString(CACHED_PRODUCTS_LIST, value);
  }

  @override
  Future<ProductResponseModel>? getAllLocalProducts() async {
    final String? jsonString =
        sharedPreferences.getString(CACHED_PRODUCTS_LIST);
    if (jsonString != null) {
      final decodedString = json.decode(jsonString);
      return Future.value(ProductResponseModel.fromJson(decodedString));
    } else {
      throw const CacheException();
    }
  }
}
