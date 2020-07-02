import 'package:cook/core/models/meal_model.dart';
import 'package:cook/core/services/meal_request.dart';
import 'package:cook/core/viewmodel/base_meal_view_model.dart';

class MealViewModel extends BaseMealViewModel {
  MealViewModel() {
    MealRequest.getMealData().then((res) {
      meals = res;
    });
  }
}
