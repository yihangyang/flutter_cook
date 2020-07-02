import 'package:cook/core/viewmodel/filter_view_model.dart';
import 'package:flutter/material.dart';
import "package:cook/core/extensions/int_extension.dart";
import 'package:provider/provider.dart';

class FilterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildChoiceTitle(context),
        buildChoiceContent(),
      ],
    );
  }

  Widget buildChoiceTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.px),
      alignment: Alignment.center,
      child: Text("Select Your Chioce",
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(fontWeight: FontWeight.bold)),
    );
  }

  Widget buildChoiceContent() {
    return Expanded(
        child: Consumer<FilterViewModel>(builder: (ctx, filterVM, child) {
          return ListView(
            children: <Widget>[
              buildListTile(
                'GlutenFree',"This is GlutenFree",
                filterVM.isGlutenFree,(value) {
                  filterVM.isGlutenFree = value;
                }
              ),
              buildListTile(
                'Vegan', "This is Vegan",
                filterVM.isVegan, (value) {
                  filterVM.isVegan = value;
                }
              ),
              buildListTile(
                'Vegetarian', "This is Vegetarian",
                filterVM.isVegetarian, (value) {
                  filterVM.isVegetarian = value;
                }
              ),
              buildListTile(
                'LactoseFree', "This is LactoseFree",
                filterVM.isLactoseFree, (value) {
                  filterVM.isLactoseFree = value;
                }
              ),
            ],
          );
        }
      )
    );
  }

  Widget buildListTile(
      String title, String subtitle, bool value, Function onchange) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Switch(value: value, onChanged: onchange),
    );
  }
}
