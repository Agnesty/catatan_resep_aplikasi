import 'package:flutter/material.dart';

enum Affordability {
 Affordable,
 Pricey,
 Luxurious,
}

enum Complexity {
  Simple,
  Challenging,
  Hard 
}

class MakananResep {
  final String id;
  final List<String> categories;
  final String namaMakanan;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> preparation;
  final List<String> nutrition;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

const MakananResep ({
  required this.id,
  required this.categories,
  required this.namaMakanan,
  required this.imageUrl,
  required this.ingredients,
  required this.preparation,
  required this.nutrition,
  required this.duration,
  required this.complexity,
  required this.affordability,
  required this.isGlutenFree,
  required this.isLactoseFree,
  required this.isVegan,
  required this.isVegetarian,
});
}