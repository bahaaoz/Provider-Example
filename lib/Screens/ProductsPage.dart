import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../DataController.dart';
import 'Items.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Items> items = [
      Items(name: "Ax1", price: 1000),
      Items(name: "Za1", price: 500),
      Items(name: "Ba1", price: 900),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("basket");
                },
                icon: const Icon(
                  Icons.shopping_cart,
                ),
              ),
              Consumer<DataController>(
                builder: (context, dataController, child) {
                  return Text(
                    dataController.numberOfItem.toString(),
                    style: const TextStyle(fontSize: 20),
                  );
                },
              ),
              const SizedBox(
                width: 5,
              )
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: ListTile(
              title: Text("${items[index].price} ILS",
                  style: const TextStyle(fontSize: 20)),
              leading: Text(
                items[index].name.toString(),
                style: const TextStyle(fontSize: 20),
              ),
              trailing: Consumer<DataController>(
                builder: (context, dataController, child) {
                  return IconButton(
                    icon: const Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      dataController.addToBasket(items[index]);
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
