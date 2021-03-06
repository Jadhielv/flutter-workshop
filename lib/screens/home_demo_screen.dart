import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_workshop/custom_widgets/app_drawer.dart';

class HomeDemoScreen extends StatefulWidget {
  static const routeName = '/words-counter';

  @override
  _HomeDemoState createState() => _HomeDemoState();
}

class _HomeDemoState extends State<HomeDemoScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return Scaffold(
      appBar: AppBar(
        title: Text("Words Counter"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 15.0),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text(
              wordPair.asPascalCase,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
    );
  }
}
