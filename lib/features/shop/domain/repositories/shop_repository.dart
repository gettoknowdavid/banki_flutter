import 'package:banki_flutter/core/error/failure.dart';
import 'package:banki_flutter/features/shop/domain/entities/product.dart';
import 'package:dartz/dartz.dart';

abstract class ShopRepository {
  Future<Either<Failure, List<Product>>> getAllProducts();
}
