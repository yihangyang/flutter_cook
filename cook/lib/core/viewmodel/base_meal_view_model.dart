import 'package:cook/core/models/meal_model.dart';
import 'package:cook/core/viewmodel/filter_view_model.dart';
import 'package:flutter/cupertino.dart';

class BaseMealViewModel extends ChangeNotifier{
  
  List<MealModel> _meals = [];

  FilterViewModel _filterVM;

  void updateFilters(FilterViewModel filterVM) {
    _filterVM = filterVM;
  }
  
  List<MealModel> get meals {
    return _meals.where((meal) {
      if(_filterVM.isGlutenFree && !meal.isGlutenFree) return false;
      if(_filterVM.isLactoseFree&& !meal.isLactoseFree) return false;
      if(_filterVM.isVegan && !meal.isVegan) return false;
      if(_filterVM.isVegetarian && !meal.isVegetarian) return false;
      return true;
    }).toList();
  }

  List<MealModel> get originalMeals {
    return _meals;
  }

  set meals(List<MealModel> value) {
    _meals = value;
    notifyListeners();
  }
}