import 'package:flutter/material.dart';
import 'package:foodapi/model/food_model.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<Food> _favorite = [];
  List<Food> get favorite => _favorite;
  void toggleFavorite(Food food) {
    if (_favorite.contains(food)) {
      _favorite.remove(food);
    } else {
      _favorite.add(food);
    }
    notifyListeners();
  }

  bool isExist(Food food) {
    final isExist = _favorite.contains(food);
    return isExist;
  }

  static FavoriteProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavoriteProvider>(context, listen: listen);
  }
}
