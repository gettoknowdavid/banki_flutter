import 'package:banki_flutter/features/shop/presentation/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankiApp extends StatelessWidget {
  const BankiApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Banki Online Store',
      home: const ShopPage(),
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      getPages: [GetPage(name: '/shop', page: () => const ShopPage())],
    );
  }
}
