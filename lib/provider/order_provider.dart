import 'package:flutter/material.dart';
import 'package:foodapi/model/food_model.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<Food> _cart = [];
  List<Food> get cart => _cart;
  void toggleFavorite(Food food) {
    if (_cart.contains(food)) {
      for (Food element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(food);
    }
    notifyListeners();
  }

  incrementQty(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  decrementQty(int index) {
    if (_cart[index].quantity <= 1) {
      return;
    }
    _cart[index].quantity--;
    notifyListeners();
  }

  totalPrice() {
    double total1 = 0.0;
    for (Food element in _cart) {
      total1 += element.price * element.quantity;
    }
    return total1;
  }

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
