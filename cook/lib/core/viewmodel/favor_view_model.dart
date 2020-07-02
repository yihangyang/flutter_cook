import 'package:cook/core/models/meal_model.dart';
import 'package:cook/core/viewmodel/base_meal_view_model.dart';

class FavorViewModel extends BaseMealViewModel {
  void addMeal(MealModel meal) {
    originalMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(MealModel meal) {
    originalMeals.remove(meal);
    notifyListeners();
  }

  void handleMeal(MealModel meal) {
    if(isFavor(meal)) {
      removeMeal(meal);
    } else {
      addMeal(meal);
    }
  }
  
  bool isFavor(MealModel meal) {
    return originalMeals.contains(meal);
  }
}