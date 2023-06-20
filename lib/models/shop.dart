import 'package:bubble_tea_ui/models/drinks.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // List of Drinks Availble for Sale
  final List<Drink> _drinks = [
    const Drink(
      name: "Coca-Cola",
      price: "\$100",
      imgLocation: "assets/images/bubble-tea.png",
    ),
    const Drink(
      name: "Fanta",
      price: "\$80",
      imgLocation: "assets/images/bubble-tea.png",
    ),
    const Drink(
      name: "Sprite",
      price: "\$120",
      imgLocation: "assets/images/bubble-tea.png",
    ),
    const Drink(
      name: "Malt",
      price: "\$150",
      imgLocation: "assets/images/bubble-tea.png",
    ),
  ];
  List<Drink> get drinks => _drinks;

  // List of drinks in User's Cart
  final List<Drink> _userCart = [];
  List get userCart => _userCart;

  // Add Drink to Cart
  void addDrinkToCart(Drink drink) {
    userCart.add(drink);
    notifyListeners();
  }

  // Remove Drink From Cart
  void removeDrinkFromCart(Drink drink) {
    userCart.remove(drink);
    notifyListeners();
  }
}
