import 'dart:convert';

import 'package:cook/core/models/category_model.dart';
import 'package:flutter/services.dart';

class JsonParse {
  static Future<List<CategoryModel>> getCategoryData() async {
    // 1. load json.data
    final jsonString = await rootBundle.loadString("assets/json/category.json");
    // 2. json => map/list
    final result = json.decode(jsonString);
    // 3. map => object
    final resultList = result['category'];
    List<CategoryModel> categories = [];
    for(var json in resultList) {
      categories.add(CategoryModel.fromJson(json));
    }
    return categories;
  }
}