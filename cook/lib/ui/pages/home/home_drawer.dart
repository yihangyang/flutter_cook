import 'package:flutter/material.dart';
import "package:cook/core/extensions/int_extension.dart";

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.px,
      child: Drawer(
        child: Column(
          children: <Widget>[
            buildHeaderView(context),
            buildListTile(context, Icon(Icons.restaurant), "eat", () {
              Navigator.of(context).pop();
            }),
            buildListTile(context, Icon(Icons.settings), "fliter", () {
              Navigator.of(context).pop();
            }),
          ],
        ),
      )
    );
  }

  Widget buildHeaderView(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.px,
      color: Colors.orange,
      margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment(0,.7),
      child: Text(
        "DO A MEAL",
        style: Theme.of(context).textTheme.headline4.copyWith(
          fontWeight: FontWeight.bold
        )
      ),
    );
  }

  Widget buildListTile(BuildContext context, Widget icon, String title, Function handler) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline1.copyWith(
          fontWeight: FontWeight.bold
        ),
      ),
      onTap: handler,
    );
  }
}