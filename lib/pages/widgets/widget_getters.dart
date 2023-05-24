import 'package:flutter/material.dart';
import 'package:grocer_test/pages/widgets/colors.dart';

get shopItems => _shopItems;


   final List _shopItems = [
    ["frash fruits and vegetables", "lib/images/frash fruits and vegetables.jpg", Colors.tealAccent ],
    ["cooking oil and ghee", "lib/images/cooking oil and ghee.jpg", Colors.brown],
    ["meat and fish", "lib/images/meat and fish.jpg", Colors.brown],
    ["dairy and eggs",  "lib/images/dairy and eggs.jpg", Colors.lime],
    ["beverages",  "lib/images/beverages.jpg", Colors.indigo],
    ["bakery and snacks",  "lib/images/bakery and snacks.jpg", Colors.purple],
    ["grape_juice", "lib/images/grape_juice.jpg", Colors.indigo],
    // repeat 
    ["frash fruits and vegetables", "lib/images/frash fruits and vegetables.jpg", Colors.tealAccent ],
    ["cooking oil and ghee", "lib/images/cooking oil and ghee.jpg", Colors.brown],
    ["meat and fish", "lib/images/meat and fish.jpg", Colors.brown],
    ["dairy and eggs",  "lib/images/dairy and eggs.jpg", Colors.lime],
    ["beverages",  "lib/images/beverages.jpg", Colors.indigo],
    ["bakery and snacks",  "lib/images/bakery and snacks.jpg", Colors.purple],
    ["grape_juice", "lib/images/grape_juice.jpg", Colors.indigo],

  ];


  // final List _shopItems = [
  //   ["frash fruits and vegetables", "lib/images/frash fruits and vegetables.jpg", AppColors.FrashFruitsAndVegetables],
  //   ["cooking oil and ghee", "lib/images/cooking oil and ghee.jpg", AppColors.CookingOilAndGhee],
  //   ["meat and fish", "lib/images/meat and fish.jpg", AppColors.MeatAndFish],
  //   ["bakery and snacks",  "lib/images/bakery and snacks.jpg", AppColors.BackeryAndSnacks],
  //   ["dairy and eggs",  "lib/images/dairy and eggs.jpg", AppColors.DairyAndEggs],
  //   ["beverages",  "lib/images/beverages.jpg", AppColors.Beverages],
 
  // ];


  get favouriteItems => _favouriteItems;


   final List _favouriteItems = [
    // itemName, itemPrice, imagePath, color
    ["lib/images/sprite.jpg", "Sprite Can", "325ml, Price", "1.50" ],
    ["lib/images/coke.jpg", "Diet Coke", "355ml, Price", "1.99" ],
    ["lib/images/grape_juice.jpg", "Apple And Grape Juice", "2l, Price", "15.50" ],
    ["lib/images/cocacola.jpg","Coca Cola Can", "325ml, Price", "4.99" ],
    ["lib/images/pepsi.jpg","Pepsi Can", "330ml, Price", "4.99" ],


  ];