import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './category_item.dart';
import '../providers/categories.dart';

class CategoryItemGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final categories = Provider.of<Categories>(context,listen: false);

    return GridView.builder(
      itemBuilder:(ctx,i)=> ChangeNotifierProvider.value(
        value: categories.items[i],
        child: CategoryItem(),
        
      ) ,
      itemCount: categories.items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
    );
  }
}