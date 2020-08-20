

import 'package:flutter/cupertino.dart';

enum Complexity{
  Simply,
  Challenging,
  Hard

}
enum Affordability{
Affordable,
Pricey,
Luxurious,
}
class Meals{
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGultenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetaran;

  const Meals({
    @required this.id, 
    @required this.categories, 
    @required this.title, 
    @required this.imageUrl, 
    @required this.ingredients, 
    @required this.steps, 
    @required this.duration, 
    @required this.complexity, 
    @required this.affordability, 
    @required this.isGultenFree, 
    @required this.isLactoseFree, 
    @required this.isVegan,
    @required this.isVegetaran
  
  });
  
}