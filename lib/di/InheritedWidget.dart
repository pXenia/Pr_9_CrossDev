
import 'package:flutter/material.dart';
import '../UserPreferences.dart';

class UserPreferencesProvider extends InheritedWidget {
  final UserPreferences userPreferences;

  const UserPreferencesProvider({
    Key? key,
    required this.userPreferences,
    required Widget child,
  }) : super(key: key, child: child);

  static UserPreferencesProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserPreferencesProvider>();
  }

  @override
  bool updateShouldNotify(UserPreferencesProvider oldWidget) {
    return oldWidget.userPreferences != userPreferences;
  }
}
