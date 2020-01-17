import 'package:flutter/material.dart';

import '../providers/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context).settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: product.id,
                      child: Container(
              height: 350,
              width: double.infinity,
              child: Image.network(product.imageUrl,fit: BoxFit.fill,),
            ),
          ),
          SizedBox(height: 20,),
           Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).accentColor,
            ),
            child: Text('Price : ₹${product.price}',
            textAlign: TextAlign.center,
            softWrap: true,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).accentColor,
            ),
            child: Text(product.description,
            textAlign: TextAlign.center,
            softWrap: true,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            ),
          )
        ],
      ),
    );
  }
}
