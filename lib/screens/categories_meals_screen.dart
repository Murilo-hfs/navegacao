import 'package:flutter/material.dart';
import 'package:navegar/data/dummy_meals.dart';
import 'package:navegar/models/category.dart';
import 'package:navegar/widgets/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
  final category = ModalRoute.of(context).settings.arguments as Category;

  final categoryMeals = DUMMY_MEALS.where((meal) => meal.categories.contains(category.id)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },),
    );
  }
}
