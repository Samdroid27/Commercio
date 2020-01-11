import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/categories.dart';

class CategoriesProductScreen extends StatelessWidget {
  static const routeName = '/category-itemsScreen';

  @override
  Widget build(BuildContext context) {
    final catItemId = ModalRoute.of(context).settings.arguments as String; 
    final categoryData = Provider.of<Categories>(context);
    final catItem = categoryData.items.firstWhere((category)=> category.id == catItemId);
    return Scaffold(
      appBar: AppBar(
        title: Text(catItem.title),
      ),
      body: Center(child: Text(catItem.id),),
    );
  }
}