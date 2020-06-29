import 'package:cook/core/viewmodel/favor_view_model.dart';
import 'package:cook/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavorViewModel>(
      builder: (ctx, favorVM, child) {
        if(favorVM.favorMeals.length == 0) {
          return Center(
            child: Text("Come to add something..."),
          );
        }
        return ListView.builder(
          itemCount: favorVM.favorMeals.length,
          itemBuilder: (itemCtx, index) {
            return MealItem(favorVM.favorMeals[index]);
          }
        );
      }
    );
  }
}