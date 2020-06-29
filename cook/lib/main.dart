import 'package:cook/core/routers/route.dart';
import 'package:cook/core/viewmodel/favor_view_model.dart';
import 'package:cook/core/viewmodel/meal_view_model.dart';
import 'package:cook/ui/shares/app_theme.dart';
import 'package:cook/ui/shares/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // Provider => ViewModel/Provider/Consumer(Selector)
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => MealViewModel()),
        ChangeNotifierProvider(create: (ctx) => FavorViewModel()),
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeFit.initialize();
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cook',
      // theme
      theme: AppTheme.norTheme,
      // route
      initialRoute: MyRoute.initialRoute,
      routes: MyRoute.routes,
      onGenerateRoute: MyRoute.generateRoute,
      onUnknownRoute: MyRoute.unknownRoute,
    );
  }
}