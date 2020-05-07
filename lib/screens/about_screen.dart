import 'package:flutter/material.dart';
import 'package:flutter_workshop/custom_widgets/app_drawer.dart';
import 'package:flutter_workshop/models/about.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/about';

  final About about = new About(name: '© 2020 GDG Santo Domingo', version: 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              about.name,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "Versión ${about.version}",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
    );
  }
}
