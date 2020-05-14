import 'package:flutter/material.dart';
import 'package:flutter_workshop/custom_widgets/app_drawer.dart';

class UnknownScreen extends StatelessWidget {
  static const routeName = '/unknown';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Unknown'),
      ),
      body: Center(
          child: RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  children: <TextSpan>[
            TextSpan(text: 'Route for '),
            TextSpan(
                text: '$routeName',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' is not defined')
          ]))),
      drawer: Drawer(
        child: AppDrawer(),
      ),
    );
  }
}
