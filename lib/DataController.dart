import 'package:flutter/cupertino.dart';

import 'Screens/Items.dart';

class DataController extends ChangeNotifier {
  List<Items> list = [];

  void addToBasket(Items item) {
    list.add(item);
    notifyListeners();
  }

  void removeFromBasket(Items item) {
    list.remove(item);
    notifyListeners();
  }

  int get numberOfItem {
    return list.length;
  }

  List get getListForBasket {
    return list;
  }

  double totalPrice() {
    double sum = 0;
    for (int i = 0; i < list.length; i++) {
      sum += list[i].price!;
    }

    return sum;
  }
}
