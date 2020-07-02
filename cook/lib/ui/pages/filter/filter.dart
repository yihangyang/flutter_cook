import 'package:cook/ui/pages/filter/filter_content.dart';
import 'package:flutter/material.dart';

class  FilterScreen extends StatelessWidget {
  static const String routeName = "/filter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter"),
        centerTitle: true,
      ),
      body: FilterContent(),
    );
  }
}