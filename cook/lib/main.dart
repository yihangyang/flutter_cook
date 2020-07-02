import 'package:cook/core/routers/route.dart';
import 'package:cook/core/viewmodel/favor_view_model.dart';
import 'package:cook/core/viewmodel/filter_view_model.dart';
import 'package:cook/core/viewmodel/meal_view_model.dart';
import 'package:cook/l18n/my_localizations_delegate.dart';
import 'package:cook/ui/shares/app_theme.dart';
import 'package:cook/ui/shares/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:cook/generated/l10n.dart';

void main() {
  // Provider => ViewModel/Provider/Consumer(Selector)
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => FilterViewModel()),
        ChangeNotifierProxyProvider<FilterViewModel, MealViewModel>(
          create: (ctx) => MealViewModel(),
          update: (ctx, filterVM, mealVM) {
            mealVM.updateFilters(filterVM);
            return mealVM;
          }
        ),
        ChangeNotifierProxyProvider<FilterViewModel, FavorViewModel>(
          create: (ctx) => FavorViewModel(),
          update: (ctx, filterVM, favorVM) {
            favorVM.updateFilters(filterVM);
            return favorVM;
          }
        ),
        // ChangeNotifierProvider(create: (ctx) => FavorViewModel()),
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
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        MyLocalizationsDelegate.delegate,
        S.delegate
      ],
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