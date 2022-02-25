import 'package:banki_flutter/core/platform/network_service.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'network_service_test.mocks.dart';

@GenerateMocks([DataConnectionChecker])
void main() {
  NetworkServiceImpl? networkServiceImpl;
  MockDataConnectionChecker? mockConnectionChecker;

  setUp(() {
    mockConnectionChecker = MockDataConnectionChecker();
    networkServiceImpl = NetworkServiceImpl(checker: mockConnectionChecker!);
  });

  group('isConn', () {
    test(
      'should forward the call to InternetChecker.hasConnection',
      () async {
        final tHasConnectionFuture = Future.value(true);

        when(mockConnectionChecker!.hasConnection).thenAnswer(
          (_) => tHasConnectionFuture,
        );

        final result = networkServiceImpl!.isConn;

        verify(mockConnectionChecker!.hasConnection);
        expect(result, tHasConnectionFuture);
      },
    );
  });
}
