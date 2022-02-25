import 'package:banki_flutter/features/shop/presentation/pages/shop_page.dart';
import 'package:flutter/material.dart';

class BankiApp extends StatelessWidget {
  const BankiApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShopPage(),
    );
  }
}
