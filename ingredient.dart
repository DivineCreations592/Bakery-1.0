
class Ingredient {
  String name;
  double purchasePrice;
  double purchaseSize;
  String unit;
  Ingredient({required this.name, required this.purchasePrice, required this.purchaseSize, required this.unit});
  double get costPerUnit => purchasePrice / purchaseSize;
}
