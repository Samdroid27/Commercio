import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  String title;
  String id;
  String categoryId;
  String description;
  String price;

  Product({
   @required this.title,
   @required this.id,
   @required this.categoryId,
   @required this.price,
   @required this.description
  });

}