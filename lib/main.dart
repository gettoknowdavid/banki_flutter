import 'package:banki_flutter/app.dart';
import 'package:banki_flutter/di/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  runApp(const BankiApp());
}
