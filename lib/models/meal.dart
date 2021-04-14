import 'package:flutter/material.dart';

  enum Complexity {
    Simple,
    Medium,
    Difficult,
  }
  enum Cost {
    Cheap,
    Fair,
    Expensive
  }

class Meal {
  final Complexity complexity;
  final Cost cost;
  final String title;
  final String id;
  final String imageUrl;
  final List <String> categories;
  final List <String> ingredients;
  final List <String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  
  const Meal({
    @required this.complexity, 
    @required this.cost,
    @required this.title,
    @required this.categories,
    @required this.id,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
  });
String get complexityText {
  switch (complexity) {
    case Complexity.Simple:
    return 'Simples';
    case Complexity.Medium:
    return 'Médio';
    case Complexity.Difficult:
    return 'Difícil';
    default:
    return 'Desconhecida';
  }
}
String get costText {
  switch (cost) {
    case Cost.Cheap:
    return 'Barato';
    case Cost.Fair:
    return 'Justo';
    case Cost.Expensive:
    return 'Caro';
    default:
    return 'Desconhecido';
  }
}



}
