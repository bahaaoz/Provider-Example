import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/Screens/BasketPage.dart';
import 'package:provider_project/Screens/ProductsPage.dart';

import 'DataController.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataController(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "home",
          routes: {
            "home": (context) => HomePage(),
            "basket": (context) => BasketPage(),
            "products": (context) => ProductsPage(),
          },
          home: Scaffold()),
    );
  }
}
