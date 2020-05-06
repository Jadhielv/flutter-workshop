import 'package:flutter/material.dart';
import 'package:flutter_workshop/screens/home_screen.dart';
import 'package:flutter_workshop/screens/product_detail_screen.dart';
import 'package:flutter_workshop/screens/product_screen.dart';
import 'package:flutter_workshop/screens/random_words_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ProductScreen.routeName: (context) => ProductScreen(),
        ProductDetail.routeName: (context) => ProductDetail(),
        RandomWords.routeName: (context) => RandomWords()
      },
    );
  }
}