import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/categories.dart';
import '../providers/products.dart';
import '../widgets/product_item_list.dart';

class CategoriesProductScreen extends StatelessWidget {
  static const routeName = '/category-itemsScreen';

  @override
  Widget build(BuildContext context) {
    final catItemId = ModalRoute.of(context).settings.arguments as String; 
    final categoryData = Provider.of<Categories>(context);
    final catItem = categoryData.items.firstWhere((category)=> category.id == catItemId);
    final productList = Provider.of<Products>(context);
    final itemList = productList.items.where((prod)=> prod.categoryId == catItem.id);
    return Scaffold(
      appBar: AppBar(
        title: Text(catItem.title),
      ),
      body: ProductItemList(itemList)
    );
  }
}