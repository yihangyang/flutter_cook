import 'package:cook/core/models/category_model.dart';
import 'package:cook/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';
import 'package:cook/core/extensions/int_extension.dart';

class HomeCategoryItem extends StatelessWidget {
  final CategoryModel _category;
  HomeCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    final bgColor = _category.cColor;
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(24.px),
          gradient: LinearGradient(
            colors: [
              bgColor.withOpacity(.5),
              bgColor
            ]
          )
        ),
        alignment: Alignment.center,
        child: Text(
          _category.title,
          style: Theme.of(context).textTheme.headline2.copyWith(
            fontWeight: FontWeight.bold
          ),
        )
      ),
      onTap: () {
        Navigator.of(context).pushNamed(
          MealScreen.routeName,
          arguments: _category
        );
      },
    );
  }
}