import 'package:cook/core/models/meal_model.dart';
import 'package:cook/ui/pages/detail/detail_content.dart';
import 'package:cook/ui/pages/detail/detail_floating_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String routeName = "/detail";
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as MealModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(meal.title),
      ),
      body: DetailContent(meal),
      floatingActionButton: DetailFloatingButton(meal),
    );
  }
}