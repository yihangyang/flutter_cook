import 'package:flutter/material.dart';

class HomeAppBar extends AppBar {

  HomeAppBar(BuildContext context): super(
    centerTitle: true,
    title: Text('Cook'),
    leading: IconButton(
      icon: Icon(Icons.build),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    )
  );
}