import 'package:flutter/material.dart';
import 'package:navegar/data/dummy_data.dart';
import 'package:navegar/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:AppBar(
            title: Text('Vamos Cozinhar?'),
          ),
          body: GridView(
          padding: const EdgeInsets.all(25),    
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
          
          ),
        children:
          DUMMY_CATEGORIES.map((cat) => CategoryItem(cat)).toList()
        
      ),
    );
  }
}