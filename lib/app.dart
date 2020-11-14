
import 'package:flutter/material.dart';
import 'package:flutter_navigation_part_1/screens/recipe_detail_screen.dart';
import 'package:flutter_navigation_part_1/screens/recipes_screen.dart';
import 'package:flutter_navigation_part_1/screens/unknown_screen.dart';

import 'models/recipe_model.dart';

class App extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Recipe _selectedRecipe;
  final bool showUnknown = false;
  List<Recipe> recipes = RECIPES;

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedRecipe = null;
    });
  }

  bool onPopPage(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) {
      return false;
    }
    // reset state when pop page
    this.setState(() {
      _selectedRecipe = null;
    });
    return true;
  }

  void onTapRecipe(Recipe recipe) {
    this.setState(() {
      _selectedRecipe = recipe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CakeRecipes',
      home: Navigator(
        onPopPage: this.onPopPage,
        pages: [
          MaterialPage(
            key: ValueKey('home'),
            child: RecipesScreen(
              recipes: this.recipes,
              onTap: this.onTapRecipe,
            ),
          ),
          if (this.showUnknown)
            MaterialPage(
              key: ValueKey('Unknown'),
              child: UnknownScreen(),
            )
          else if (this._selectedRecipe != null)
            MaterialPage(
              key: ValueKey('SelectedRecipe'),
              child: RecipeDetailsScreen(
                recipe: this._selectedRecipe,
              ),
            )
        ],
      ),
    );
  }
}
