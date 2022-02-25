// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker_tv/data_connection_checker.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../api/graphql_api.dart' as _i9;
import '../core/platform/network_service.dart' as _i5;
import '../features/shop/data/datasources/local/shop_local_datasource.dart'
    as _i7;
import '../features/shop/data/datasources/local/shop_local_datasource_impl.dart'
    as _i8;
import '../features/shop/data/datasources/remote/shop_remote_datasource.dart'
    as _i10;
import '../features/shop/data/datasources/remote/shop_remote_datasource_impl.dart'
    as _i11;
import '../features/shop/data/repositories/shop_repository_impl.dart' as _i13;
import '../features/shop/domain/repositories/shop_repository.dart' as _i12;
import '../features/shop/domain/usecases/get_all_products.dart' as _i14;
import '../features/shop/presentation/bloc/shop_bloc.dart' as _i15;
import 'register_module.dart' as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.DataConnectionChecker>(() => registerModule.conn);
  gh.lazySingleton<_i4.GraphQLClient>(() => registerModule.gqlClient);
  gh.lazySingleton<_i5.NetworkService>(
      () => _i5.NetworkServiceImpl(checker: get<_i3.DataConnectionChecker>()));
  await gh.lazySingletonAsync<_i6.SharedPreferences>(
      () => registerModule.getSharedPrefInstance,
      preResolve: true);
  gh.lazySingleton<_i7.ShopLocalDataSource>(() => _i8.ShopLocalDataSourceImpl(
      sharedPreferences: get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i9.GraphQLApi>(
      () => _i9.GraphQLApiImpl(client: get<_i4.GraphQLClient>()));
  gh.lazySingleton<_i10.ShopRemoteDataSource>(
      () => _i11.ShopRemoteDataSourceImpl(gqlApi: get<_i9.GraphQLApi>()));
  gh.lazySingleton<_i12.ShopRepository>(() => _i13.ShopRepositoryImpl(
      remote: get<_i10.ShopRemoteDataSource>(),
      local: get<_i7.ShopLocalDataSource>(),
      network: get<_i5.NetworkService>()));
  gh.lazySingleton<_i14.GetAllProducts>(
      () => _i14.GetAllProducts(get<_i12.ShopRepository>()));
  gh.factory<_i15.ShopBloc>(
      () => _i15.ShopBloc(getAllProducts: get<_i14.GetAllProducts>()));
  return get;
}

class _$RegisterModule extends _i16.RegisterModule {}
