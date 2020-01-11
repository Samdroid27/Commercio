
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/categories_screen.dart';
import './screens/category_product_screen.dart';
import './providers/categories.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Categories(),
        )
      ],
          child: MaterialApp(
        title: 'COMMERCIO',
        theme: ThemeData(
          primaryColor: Colors.purpleAccent,
          primarySwatch: Colors.amber,
          accentColor: Colors.orangeAccent,
          canvasColor: Color.fromRGBO(255, 255, 224, 1)
        ),
        initialRoute: CategoriesScreen.routeName,

  routes: {
      CategoriesScreen.routeName : (ctx)=> CategoriesScreen(),
      CategoriesProductScreen.routeName : (ctx)=> CategoriesProductScreen()
  },
        

      ),
    );
  }
}