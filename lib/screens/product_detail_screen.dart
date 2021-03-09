import 'package:flutter/material.dart';
import 'package:flutter_workshop/custom_widgets/app_drawer.dart';
import 'package:flutter_workshop/screens/home_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final String productName =
        ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(children: <Widget>[
          Icon(Icons.shopping_basket),
          SizedBox(
            width: 20,
          ),
          Text('Product Detail')
        ]),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            productName,
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              child: TextButton.icon(
                label: Text(
                  'Back Home',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black
                ),
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen()),
                  ModalRoute.withName(HomeScreen.routeName));
                },
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black
              ),
              onPressed: () {})
        ],
      )),
      drawer: AppDrawer(),
    );
  }
}
