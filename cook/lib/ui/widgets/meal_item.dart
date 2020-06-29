import 'package:cook/core/models/meal_model.dart';
import 'package:cook/core/viewmodel/favor_view_model.dart';
import 'package:cook/ui/pages/detail/detail.dart';
import 'package:cook/ui/widgets/opration_item.dart';
import 'package:flutter/material.dart';
import "package:cook/core/extensions/int_extension.dart";
import 'package:provider/provider.dart';

class MealItem extends StatelessWidget {
  final cardRadius = 12.px;
  final MealModel _meal;
  MealItem(this._meal);
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.px),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cardRadius)
        ),
        child: Column(
          children: <Widget>[
            buildBasicInfo(context),
            buildOpraionInfo()
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(DetailScreen.routeName, arguments: _meal);
      },
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(cardRadius),
            topRight: Radius.circular(cardRadius),
          ),
          child: Image.network(
            _meal.imageUrl,
            width: double.infinity,
            height: 250.px,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10.px,
          bottom: 10.px,
          child: Container(
            width: 300.px,
            padding: EdgeInsets.symmetric(horizontal: 10.px, vertical: 5.px),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(6.px)
            ),
            child: Text(
              _meal.title,
              style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
  Widget buildOpraionInfo() {
    return Padding(
      padding: EdgeInsets.all(5.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          OprationItem(Icon(Icons.schedule), "${_meal.duration} mins"),
          OprationItem(Icon(Icons.restaurant), "${_meal.complexStr}"),
          buildFavorItem(),
        ],
      ),
    );
  }

  Widget buildFavorItem() {
    return Consumer<FavorViewModel>(
      // wether favor
      builder: (ctx, favorVM, child) {
        final iconData = favorVM.isFavor(_meal) ? Icons.favorite : Icons.favorite_border;
        final favorColor = favorVM.isFavor(_meal) ? Colors.red : Colors.black;
        final title = favorVM.isFavor(_meal) ? "like" : "dislike";

        return GestureDetector(
          child: OprationItem(Icon(iconData, color: favorColor,),
          title,
          textcolor: favorColor,
        ),
        onTap: () {
          favorVM.handleMeal(_meal);
        },
        );
      },
    );
  }
}