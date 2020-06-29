import 'package:cook/core/models/meal_model.dart';

import 'http_request.dart';

class MealRequest {
  static Future<List<MealModel>> getMealData() async {
    // 1. snd message request
    final url = "/meal";
    final result = await HttpRequest.request(url);

    // 2. json => model
    final mealArray = result["meal"];
    List<MealModel> meals = [];
    for(var json in mealArray) {
      meals.add(MealModel.fromJson(json));
    }
    return meals;
  }
}