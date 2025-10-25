class ApiEndpoints {
  const ApiEndpoints._();

  static const String baseUrl = 'https://dummyjson.com';

  /// recipe
  static String get recipes => '/recipes';
  static String get searchRecipes => '/recipes/search';
  static String get addRecipe => '/recipes/add';
  static String get recipeSearch => '/recipes/search';
  static String get recipesTags => '/recipes/tags';
  static String recipeDetails(int id) => '/recipes/$id';
  static String updateRecipe(int id) => '/recipes/$id';
  static String deleteRecipe(int id) => '/recipes/$id';
  static String recipeByTag(String tag) => '/recipes/tag/$tag';
  static String recipeByMeal(String meal) => '/recipes/meal-type/$meal';
}
