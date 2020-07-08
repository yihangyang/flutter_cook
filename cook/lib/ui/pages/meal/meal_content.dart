import 'package:cook/core/models/category_model.dart';
import 'package:cook/core/models/meal_model.dart';
import 'package:cook/core/viewmodel/meal_view_model.dart';
import 'package:cook/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class MealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as CategoryModel;
    return Selector<MealViewModel,List<MealModel>>(
      selector: (ctx, mealVM) {
        return mealVM.meals.where((meal) {
          return meal.categories.contains(category.id);
        }).toList();
      },
      shouldRebuild: (prev, next) => !ListEquality().equals(prev, next),
      builder: (ctx, meals,child) {
        return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) {
            return MealItem(meals[index]);
          }
        );
      },
    );
  }
  // use consumer
  // Widget build(BuildContext context) {
  //   final category = ModalRoute.of(context).settings.arguments as CategoryModel;
  //   return Consumer<MealViewModel>(
  //     builder: (ctx, mealVm, child) {
  //       final meals = mealVm.meals.where((meal) =>
  //         meal.categories.contains(category.id)).toList();
  //       return ListView.builder(
  //         itemCount: meals.length,
  //         itemBuilder: (ctx, index) {
  //           return ListTile(title: Text(meals[index].title));
  //         }
  //       );
  //     },
  //   );
  // }
}