import 'package:flutter/material.dart';
import 'package:flutter_workshop/screens/product_screen.dart';
import 'package:flutter_workshop/screens/random_words_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            title: Text('jadhielv@gmail.com'),
            subtitle: Text('Administrator'),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
            title: Text(
              'My Products',
            ),
            onTap: () {
              Navigator.of(context).pushNamed(ProductScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.format_list_bulleted,
              color: Colors.black,
            ),
            title: Text(
              'Name Generator',
            ),
            onTap: () {
              Navigator.of(context).pushNamed(RandomWords.routeName);
            },
          )
        ],
      ),
    );
  }
}
