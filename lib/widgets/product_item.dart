import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product.dart';


class ProductItem extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final product =Provider.of<Product>(context);


    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
       elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                  ),
                child: Image.network(
                  product.imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20
                    ),
                    child: Text(
                      product.title,
                      style : TextStyle(
                        fontSize: 26,
                        color: Colors.white
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
          ]
        )
    );
  }
}