import 'package:flutter/material.dart';
import 'package:flutter_workshop/widget/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
        ],
      ),
      body: Center(child: Text('My Shop Body')),
      drawer: AppDrawer(),
    );
  }
}
