import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../DataController.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 7,
              child: Consumer<DataController>(
                builder: (context, dataController, child) {
                  return ListView.builder(
                    itemCount: dataController.numberOfItem,
                    itemBuilder: (context, index) {
                      return ListTile(
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.remove_shopping_cart_rounded,
                          ),
                          onPressed: () {
                            dataController.removeFromBasket(
                                dataController.getListForBasket[index]);
                          },
                        ),
                        leading:
                            Text(dataController.getListForBasket[index].name),
                        title: Text(
                            "${dataController.getListForBasket[index].price} ILS"),
                      );
                    },
                  );
                },
              ),
            ),
            Consumer<DataController>(
              builder: (context, dataController, child) {
                return Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    child: Row(children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Text(
                          "Total Price : ${dataController.totalPrice()}",
                          style: const TextStyle(fontSize: 20),
                        ),
                      )
                    ]),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
