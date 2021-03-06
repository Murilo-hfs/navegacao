import 'package:flutter/material.dart';
import 'package:navegar/models/category.dart';

class CategoryItem extends StatelessWidget {
final Category category;
const CategoryItem(this.category);

void _selectCategory(BuildContext context) {
  Navigator.of(context).pushNamed(
    '/categories-meals',
    arguments: category);
}
  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        onTap: () => _selectCategory(context),
        child: Container(
        child: Text(category.title),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors:[
              category.color.withOpacity(0.5,),
              category.color,  
            ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight  ),
        ),
      ),
    );
  }
}
