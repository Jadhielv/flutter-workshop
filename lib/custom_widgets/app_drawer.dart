import 'package:flutter/material.dart';
import 'package:flutter_workshop/screens/home_demo_screen.dart';
import 'package:flutter_workshop/screens/home_screen.dart';
import 'package:flutter_workshop/screens/product_screen.dart';
import 'package:flutter_workshop/screens/random_words_screen.dart';
import 'package:flutter_workshop/screens/about_screen.dart';

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
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
          ),
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
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => RandomWords()),
                  ModalRoute.withName(RandomWords.routeName));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.black,
            ),
            title: Text(
              'Home Demo',
            ),
            onTap: () {
              Navigator.of(context).pushNamed(HomeDemo.routeName);
            },
          ),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              leading: Icon(
                Icons.live_help,
                color: Colors.black,
              ),
              title: Text(
                'About',
              ),
              onTap: () {
                Navigator.of(context).popAndPushNamed(AboutScreen.routeName);
              },
            ),
          ))
        ],
      ),
    );
  }
}
