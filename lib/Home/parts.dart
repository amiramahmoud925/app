import 'package:flutter/material.dart';
class Items{
  final String text ;
  final String subtext ;
  final String price ;
  final String pastprice ;
  final String image ;

  Items(
    this.text,
    this.subtext,
    this.price,
    this.pastprice,
    this.image,

      );

}

List items = [
  Items("apple", 'is fresh and good', '\$35', '\$50',  "assets/images/apple.png"),
  Items("banana", 'is  good', '\$45', '\$50',  "assets/images/banana.png"),
  Items("watermelon", 'red and circle', '\$30', '\$40',  "assets/images/watermelon.png"),
  Items("pear", ' good', '\$35', '\$45',  "assets/images/pear.png"),
  Items("Peach", 'delicious', '\$50', '\$60',  "assets/images/Peach.png"),
  Items("Coconut", 'good and delicious', '\$65', '\$75',  "assets/images/Coconut.png"),
  Items("mango", 'small and good', '\$55', '\$65',  "assets/images/mango.png"),
  Items("grapes", ' delicious', '\$50', '\$60',  "assets/images/grapes.png"),

];


