class Recipe {
  final String name;
  final String catagory;
  final String chef;

  Recipe({this.catagory, this.chef, this.name});
}

final List<Recipe> RECIPES = [
  Recipe(name: 'Pumpkin Cake', catagory: 'Squash recipes', chef: 'Sue Case'),
  Recipe(
      name: "Grandma's Chocolate Texas Sheet Cake",
      catagory: 'Sheet cake',
      chef: 'Bakah Miller'),
  Recipe(
      name: 'Apple Upside-Down cake',
      catagory: 'Apple desserts',
      chef: 'Amber'),
  Recipe(
      name: 'Maple Buttercream Frosting',
      catagory: 'Buttercream frosting',
      chef: 'Sarah'),
];
