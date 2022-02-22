import 'package:banki_flutter/core/error/failure.dart';
import 'package:banki_flutter/features/shop/data/models/product_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/product.dart';
import 'package:dartz/dartz.dart';

abstract class ShopRemoteDataSource {
  /// Calls the https://saya-strapi.herokuapp.com/api endpoint
  /// 
  /// Throws a [ServerException] for any error code
  Future<List<ProductModel>>? getAllRemoteProducts();
}