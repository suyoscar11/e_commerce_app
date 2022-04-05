import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String name;
  final int Quantity;
  final double price;

  CartItem(
      {required this.id,
      required this.name,
      required this.Quantity,
      required this.price});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _item = {};

  Map<String, CartItem> get item {
    return {..._item};
  }

  int get itemCount {
    return _item.length;
  }

  void addItem(String pdtid, String name, double price) {
    if (_item.containsKey(pdtid)) {
      _item.update(
          pdtid,
          (existingCartItem) => CartItem(
              id: DateTime.now().toString(),
              name: existingCartItem.name,
              Quantity: existingCartItem.Quantity + 1,
              price: existingCartItem.price));
    } else {
      _item.putIfAbsent(
          pdtid,
          () => CartItem(
              id: DateTime.now().toString(),
              name: name,
              Quantity: 1,
              price: price));
    }
    notifyListeners();
  }

  void removeItem(String id) {
    _item.remove(id);
    notifyListeners();
  }

  void removeSingleItem(String id) {
    if (!_item.containsKey(id)) {
      return;
    }
    if (_item[id]!.Quantity > 1) {
      item.update(
          id,
          (existingCartItem) => CartItem(
              id: DateTime.now().toString(),
              name: existingCartItem.name,
              Quantity: existingCartItem.Quantity - 1,
              price: existingCartItem.price));
    }
    notifyListeners();
  }

  void clear() {
    _item = {};
    notifyListeners();
  }
}
