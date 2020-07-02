import 'package:cook/ui/pages/detail/detail.dart';
import 'package:cook/ui/pages/filter/filter.dart';
import 'package:cook/ui/pages/main/main.dart';
import 'package:cook/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';

class MyRoute {
  static final String initialRoute = MainScreen.routeName;
  static final Map<String, WidgetBuilder> routes = {
    MainScreen.routeName: (ctx) => MainScreen(),
    MealScreen.routeName: (ctx) => MealScreen(),
    DetailScreen.routeName: (ctx) => DetailScreen()
  };

  static final RouteFactory generateRoute = (settings) {
    if (settings.name == FilterScreen.routeName) {
      return MaterialPageRoute(
          builder: (ctx) {
            return FilterScreen();
          },
          // making the app bars have a close button instead of a back button
          fullscreenDialog: true);
    }
    return null;
  };
  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
