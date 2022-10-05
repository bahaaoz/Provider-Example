import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../DataController.dart';
import 'BasketPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.black38,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  height: 50,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      "Home Page",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed("products");
              },
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  height: 50,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      "Products Page",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
    );
    ;
  }
}
