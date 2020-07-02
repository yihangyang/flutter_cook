import 'package:cook/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends AppBar {

  HomeAppBar(BuildContext context): super(
    centerTitle: true,
    title: Text(S.of(context).title),
    leading: IconButton(
      icon: Icon(Icons.build),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    )
  );
}