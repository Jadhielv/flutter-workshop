import 'package:flutter/material.dart';
import 'package:flutter_workshop/screens/about_screen.dart';
import 'package:flutter_workshop/screens/home_demo_screen.dart';
import 'package:flutter_workshop/screens/home_screen.dart';
import 'package:flutter_workshop/screens/product_detail_screen.dart';
import 'package:flutter_workshop/screens/product_screen.dart';
import 'package:flutter_workshop/screens/random_words_screen.dart';
import 'package:device_simulator/device_simulator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => DeviceSimulator(brightness: Brightness.dark, enable: true, child: HomeScreen()),
        ProductScreen.routeName: (context) => ProductScreen(),
        ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
        RandomWordsScreen.routeName: (context) => RandomWordsScreen(),
        HomeDemoScreen.routeName: (context) => HomeDemoScreen(),
        AboutScreen.routeName: (context) => AboutScreen()
      },
    );
  }
}
