import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_workshop/custom_widgets/app_drawer.dart';

class RandomWordsState extends State<RandomWordsScreen> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Startup Name Generator'),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/
          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}

class RandomWordsScreen extends StatefulWidget {
  static const routeName = '/random-words';

  @override
  RandomWordsState createState() => RandomWordsState();
}

class ScrollListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RandomWordsScreen(),
    );
  }
}
