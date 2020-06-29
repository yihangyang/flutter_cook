import 'package:cook/core/models/category_model.dart';
import 'package:cook/ui/pages/meal/meal_content.dart';
import 'package:flutter/material.dart';

class MealScreen extends StatelessWidget {
  static const String routeName = "/meal";
  @override
  Widget build(BuildContext context) {
    // get argument
    final category = ModalRoute.of(context).settings.arguments as CategoryModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(category.title),
      ),
      body: Center(
        child: MealContent()
      ),
    );
  }
}