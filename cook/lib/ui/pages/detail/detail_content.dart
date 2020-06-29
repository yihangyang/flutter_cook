import 'package:cook/core/models/meal_model.dart';
import 'package:flutter/material.dart';

import "package:cook/core/extensions/int_extension.dart";

class DetailContent extends StatelessWidget {
  final MealModel _meal;

  const DetailContent(this._meal);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildBannerImage(),
          buildMakeTitle(context, "Materials"),
          buildMakeMatrial(context),
          buildMakeTitle(context, "Steps "),
          buildMakeSteps(context),
        ],
      ),
    );
  }

  // 1. big pic
  Widget buildBannerImage() {
    return Container(
      width: double.infinity,
      child: Image.network(_meal.imageUrl)
    );
  }

  // 2. cooking matrial
  Widget buildMakeMatrial(BuildContext context) {
    return buildMakeContent(
      context: context,
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _meal.ingredients.length,
        itemBuilder: (ctx, index) {
          return Card(
            color: Theme.of(context).accentColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Text(_meal.ingredients[index]),
            ),
          );
        }
      ),
    );
  }

  // 3. Make Steps
  Widget buildMakeSteps(BuildContext context) {
    return buildMakeContent(
      context: context,
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: _meal.steps.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text("#${index+1}")
            ),
            title: Text(_meal.steps[index]),
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
        
      )
    );
  }

  // Common function
  Widget buildMakeTitle(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.px),
      child: Text(title,style: Theme.of(context).textTheme.headline3.copyWith(fontWeight: FontWeight.bold),),
    );
  }
  Widget buildMakeContent({BuildContext context,  Widget child}) {
    return Container(
      padding: EdgeInsets.all(5.px),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12.px)
      ),
      width: MediaQuery.of(context).size.width - 30.px,
      child: child,
    );
  } 

}