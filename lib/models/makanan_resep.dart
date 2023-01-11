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
  final Affordability affordability;
 

const MakananResep ({
  required this.id,
  required this.categories,
  required this.namaMakanan,
  required this.imageUrl,
  required this.ingredients,
  required this.preparation,
  required this.nutrition,
  required this.duration,
  required this.affordability,
});
}