import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/category.dart';
import '../screens/category_product_screen.dart';

class CategoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryItem = Provider.of<Category>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(CategoriesProductScreen.routeName,arguments: categoryItem.id);
          },
          child: Container(
            color: categoryItem.color,
          ),
        ),
        footer: GridTileBar(
            backgroundColor: Colors.black54, title: Text(categoryItem.title)),
      ),
    );
  }
}
