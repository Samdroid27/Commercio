import 'package:flutter/material.dart';

import './category.dart';

class Categories with ChangeNotifier {

  List<Category> _items =[
    Category(
      id: 'c1',
      title: 'books',
      color: Colors.yellow,
    ),
    Category(
      id: 'c2',
      title: 'Stationary',
      color: Colors.green
    ),

  ];


  List<Category> get items {
    return [..._items];
  }
}
