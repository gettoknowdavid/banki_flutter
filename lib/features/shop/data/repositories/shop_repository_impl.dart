import 'package:banki_flutter/features/shop/domain/entities/product.dart';
import 'package:banki_flutter/core/error/failure.dart';
import 'package:banki_flutter/features/shop/domain/repositories/shop_repository.dart';
import 'package:dartz/dartz.dart';

class ShopRepositoryImpl implements ShopRepository {
  @override
  Future<Either<Failure, List<Product>>>? getAllProducts() async {
    throw UnimplementedError();
  }
}
