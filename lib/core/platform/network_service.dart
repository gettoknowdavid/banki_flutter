import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkService {
  Future<bool>? get isConn;
}

@LazySingleton(as: NetworkService)
class NetworkServiceImpl implements NetworkService {
  NetworkServiceImpl({required this.checker});
  final DataConnectionChecker checker;

  @override
  Future<bool> get isConn => checker.hasConnection;
}
