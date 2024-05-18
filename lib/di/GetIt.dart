import 'package:get_it/get_it.dart';
import '../UserPreferences.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<UserPreferences>(
    UserPreferences(
      favoriteCoffee: 'Latte',
      favoriteSnack: 'Croissant',
      favoriteDessert: 'Cheesecake',
    ),
  );
}
