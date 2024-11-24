import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Dish.dart';

class FavoriteModel extends ChangeNotifier {
  List<Dish> favoriteDishes = [];

  FavoriteModel() {
    _loadFavorites();
  }

  // Load favorite dishes from SharedPreferences
  Future<void> _loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? storedFavorites = prefs.getStringList('favoriteDishes');
    if (storedFavorites != null) {
      favoriteDishes = storedFavorites
          .map((dishString) => Dish.fromJson(dishString))
          .toList();
      notifyListeners(); // Notify listeners after loading favorites
    }
  }

  // Save favorite dishes to SharedPreferences
  Future<void> _saveFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> dishStrings = favoriteDishes.map((dish) => dish.toJson()).toList();
    await prefs.setStringList('favoriteDishes', dishStrings);
  }

  void toggleFavorite(BuildContext context, Dish dish) {
    if (isFavorite(dish)) {
      favoriteDishes.removeWhere((d) => d.dishTitle == dish.dishTitle);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Removed from favorites'),
          duration: Duration(seconds: 1),
        ),
      );
    } else {
      favoriteDishes.add(dish);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Added to favorites'),
          duration: Duration(seconds: 1),
        ),
      );
    }

    _saveFavorites();
    notifyListeners();
  }

  bool isFavorite(Dish dish) {
    return favoriteDishes.any((d) => d.dishTitle == dish.dishTitle);
  }
}
