import 'package:flutter/material.dart';

class Category with ChangeNotifier{
  String id;
  String title;
  Color color;

  Category({
    @required this.id,
    @required this.title,
    this.color,
  });
}
