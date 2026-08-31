
class RecipeItem {
  String ingredient;
  double amount;
  RecipeItem(this.ingredient,this.amount);
}
class Recipe {
  String name;
  double baseSize;
  List<RecipeItem> items;
  Recipe({required this.name,required this.baseSize,required this.items});
}
