import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {

  List<Product> _items =[
    Product(
      id: 'p1',
      title: 'Computer Programming',
      categoryId: 'c1',
      price: 500.0,
      description: '1st year CS F111 course book at 30% off',
      imageUrl: 'https://www.pearsonhighered.com/assets/bigcovers/0/1/3/1/0131103628.jpg'
    ),
    Product(
      id: 'p2',
      title: 'Jd lee',
      categoryId: 'c1',
      price: 400.0,
      description: '1st year Chem f111 Inorganic text book',
      imageUrl: 'https://images-na.ssl-images-amazon.com/images/I/410peFsZ3nL.jpg'
    ),
    Product(
      id: 'p3',
      title: 'Calculator',
      categoryId: 'c2',
      price: 700.0,
      description: 'Casio calculator fx-82ms at affordable rate',
      imageUrl: 'https://5.imimg.com/data5/MF/VH/MY-33993240/casio-fx-82-ms-scientific-calculator-500x500.jpg'
    )

  ];


  List<Product> get items {
    return [..._items];
  }
}
