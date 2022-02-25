import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  DataConnectionChecker get conn => DataConnectionChecker();

  @lazySingleton
  GraphQLClient get gqlClient => GraphQLClient(
        link: HttpLink('https://saya-strapi.herokuapp.com/graphql'),
        cache: GraphQLCache(),
      );

  @preResolve
  @lazySingleton
  Future<SharedPreferences> get getSharedPrefInstance async {
    return await SharedPreferences.getInstance();
  }
}
