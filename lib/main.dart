// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // @override
  // StatelessElement createElement() {
  //   // TODO: implement createElement
  //   return super.createElement();
  // }
  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: RandomWords()
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    // ListView
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
              padding: EdgeInsets.all(16.0), 
              itemBuilder: this.listviewBulder
        );
  }

  /*
   * the row iterator [i]. The iterator begins at 0 and increments each time the function is called. 
   * It increments twice for every suggested word pairing: once for the ListTile, and once for the Divider.
   */
  Widget listviewBulder(BuildContext context, int i) {
    if (i.isOdd) return Divider();

    // Divide, returning an integer result
    //1, 2, 3, 4, 5 becomes 0, 1, 1, 2, 2 after i~/2.
    final index = i ~/ 2;
    //If all the already suggested words have been used, then build more words
    //10 at a time
    if (index >= this._suggestions.length) {
      this._suggestions.addAll(generateWordPairs().take(10)); /*4*/
    }

    //Returns a ListTile row
    return _buildRow(_suggestions[index]);
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
