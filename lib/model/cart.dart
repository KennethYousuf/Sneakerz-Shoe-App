import 'package:flutter/material.dart';
import 'package:sneakerz/model/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Neon',
      price: 'Rs 7999',
      imagepath: "images/nike1.jpg",
    ),
    Shoe(
      name: 'Nike Neon',
      price: 'Rs 7999',
      imagepath: "images/nike2.jpg",
    ),
    Shoe(
      name: 'Nike Neon',
      price: 'Rs 7999',
      imagepath: "images/nike3.jpg",
    ),
    Shoe(
      name: 'Nike Neon',
      price: 'Rs 7999',
      imagepath: "images/nike4.jpg",
    ),
  ];

  //list of items in user's cart
  List<Shoe> userCart = [];

  //get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove from cart
  void removeItemsToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
