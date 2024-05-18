class UserPreferences {
  String favoriteCoffee;
  String favoriteSnack;
  final String favoriteDessert;

  UserPreferences({
    required this.favoriteCoffee,
    required this.favoriteSnack,
    required this.favoriteDessert,
  });

  void updateFavoriteCoffee(String newFavoriteCoffee) {
    favoriteCoffee = newFavoriteCoffee;
  }
  void updateFavoriteSnack(String newFavoriteSnack) {
    favoriteSnack = newFavoriteSnack;
  }
}