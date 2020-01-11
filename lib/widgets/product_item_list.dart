import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../providers/product.dart';
import './product_item.dart';

class ProductItemList extends StatelessWidget {

  final Iterable<Product> product;

  ProductItemList(this.product);

  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: product.length,
      itemBuilder: (ctx,i)=> ChangeNotifierProvider.value(
        value: [...product][i],
        child: ProductItem(),

      ),

    );
  }
}