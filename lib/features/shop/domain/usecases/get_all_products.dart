import 'package:banki_flutter/core/error/failure.dart';
import 'package:banki_flutter/core/usecase/usecase.dart';
import 'package:banki_flutter/features/shop/domain/entities/product.dart';
import 'package:banki_flutter/features/shop/domain/repositories/shop_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllProducts implements UseCase<List<Product?>, NoParams> {
  GetAllProducts(this.repository);

  final ShopRepository repository;

  @override
  Future<Either<Failure, List<Product>>?> call(NoParams params) async {
    return await repository.getAllProducts();
  }
}
