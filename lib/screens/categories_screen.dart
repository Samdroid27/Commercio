import 'package:flutter/material.dart';

import '../widgets/category_item_grid.dart';

class CategoriesScreen extends StatelessWidget {

  static const routeName = '/Categories-Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories Screen'),
      ),
          body: CategoryItemGrid(),
    );
  }
}