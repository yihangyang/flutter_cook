import 'package:cook/core/models/meal_model.dart';

import 'http_request.dart';
import 'dart:convert';

class MealRequest {
  static Future<List<MealModel>> getMealData() async {
    // 1. snd message request
    final url = "/meal.json";
    final String loadData = await HttpRequest.request(url);


    final result = json.decode(loadData);
    // 2. json => model
    final mealArray = result["meal"];
    List<MealModel> meals = [];
    for(var json in mealArray) {
      meals.add(MealModel.fromJson(json));
    }
    return meals;
  }
}