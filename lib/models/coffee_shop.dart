import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: 'Hot Coffee',
      price: "40",
      imagePath: "lib/drink/2.png",
    ),
    Coffee(
      name: 'Iced Coffee',
      price: "50",
      imagePath: "lib/drink/4.png",
    ),
    Coffee(
      name: 'Hot Tea',
      price: "30",
      imagePath: "lib/drink/3.png",
    ),
    Coffee(
      name: 'Bubble Coffee',
      price: "55",
      imagePath: "lib/drink/1.png",
    )
  ];

//cart
  List<Coffee>_userCart = [];
//get list
List<Coffee> get coffee => _shop;
//get user cart
List<Coffee> get userCart => _userCart;
//add something
void addItemToCart(Coffee coffee) {
  _userCart.add(coffee);
  notifyListeners();
} 
void removeItemFromCart(Coffee coffee) {
  _userCart.remove(coffee);
  notifyListeners();
} 



}