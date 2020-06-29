import 'package:cook/core/models/meal_model.dart';
import 'package:cook/core/services/meal_request.dart';
import 'package:flutter/cupertino.dart';

class MealViewModel extends ChangeNotifier {
  List<MealModel> _meals = [];

  List<MealModel> get meals {
    return _meals;
  }

  MealViewModel() {
    MealRequest.getMealData().then((res) {
      _meals = res;
      notifyListeners();
    });
  }
}