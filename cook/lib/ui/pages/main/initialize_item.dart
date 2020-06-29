import 'package:cook/ui/pages/favor/favor.dart';
import 'package:cook/ui/pages/home/home.dart';
import 'package:flutter/material.dart';

final List<Widget> pages =  [
  HomeScreen(),
  FavorScreen()
];
final List<BottomNavigationBarItem> items= [
  BottomNavigationBarItem(
    title: Text("Home"),
    icon: Icon(Icons.home)
  ),
  BottomNavigationBarItem(
    title: Text("Favorite"),
    icon: Icon(Icons.star)
  ),
];