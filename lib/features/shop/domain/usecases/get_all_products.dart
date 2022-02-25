import 'package:banki_flutter/core/error/failure.dart';
import 'package:banki_flutter/core/usecase/usecase.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_response.dart';
import 'package:banki_flutter/features/shop/domain/repositories/shop_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllProducts implements UseCase<ProductResponse?, NoParams> {
  GetAllProducts(this.repository);

  final ShopRepository repository;

  @override
  Future<Either<Failure, ProductResponse>?> call(NoParams params) async {
    return await repository.getAllProducts();
  }
}
