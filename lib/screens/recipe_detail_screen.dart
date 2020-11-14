import 'package:flutter/material.dart';
import 'package:flutter_navigation_part_1/models/recipe_model.dart';

class RecipeDetailsScreen extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailsScreen({@required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            if (recipe != null) ...[
              Text(recipe.name, style: Theme.of(context).textTheme.headline3),
              Text(recipe.catagory,
                  style: Theme.of(context).textTheme.subtitle1),
              Text(recipe.chef, style: Theme.of(context).textTheme.subtitle2)
            ]
          ],
        ),
      ),
    );
  }
}
