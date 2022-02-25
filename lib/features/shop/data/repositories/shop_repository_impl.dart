import 'package:banki_flutter/core/error/exceptions.dart';
import 'package:banki_flutter/core/platform/network_service.dart';
import 'package:banki_flutter/features/shop/data/datasources/local/shop_local_datasource.dart';
import 'package:banki_flutter/features/shop/data/datasources/remote/shop_remote_datasource.dart';
import 'package:banki_flutter/core/error/failure.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_response.dart';
import 'package:banki_flutter/features/shop/domain/repositories/shop_repository.dart';
import 'package:dartz/dartz.dart';

class ShopRepositoryImpl implements ShopRepository {
  ShopRepositoryImpl({
    required this.remote,
    required this.local,
    required this.network,
  });

  final ShopRemoteDataSource remote;
  final ShopLocalDataSource local;
  final NetworkService network;

  @override
  Future<Either<Failure, ProductResponse>> getAllProducts() async {
    if (await network.isConn!) {
      await network.isConn;
      try {
        await network.isConn;
        final result = await remote.getAllRemoteProducts();
        await local.cacheAllProducts(result!);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localResult = await local.getAllLocalProducts();
        return Right(localResult!);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
