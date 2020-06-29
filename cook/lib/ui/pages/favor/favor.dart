import 'package:cook/ui/pages/favor/favor_content.dart';
import 'package:flutter/material.dart';

class FavorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('My Favorite')
        ),
      ),
      body: FavorContent(),
    );
  }
}