// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'liked-posts-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // @override
  // StatelessElement createElement() {
  //   // TODO: implement createElement
  //   return super.createElement();
  // } pathPot
  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      // theme: ThemeData(pri),
      theme: ThemeData( 
        primaryColor: Colors.purple,
      ),   
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
  //This Set stores the word pairings that the user favorited.
  //a properly implemented Set doesn't allow duplicate entries.
  final _saved = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    // ListView
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Name Generator'),
        //add a list icon to the AppBar in the 
        //When the user clicks the list icon, a new route that contains the saved favorites 
        //is pushed to the Navigator displaying the icon.
        actions: [
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }
  
  //VoidCallback
  void _pushSaved() {
    // context =  null;
    // I'll build a route and push it to the Navigator's stack. 
    Navigator.of(context).push( likedPage(_saved,_biggerFont));
  }
  Widget _buildSuggestions() {
    //We will be adding each individual ListTile and Dividiews into this ListView
    return ListView.builder(
              padding: EdgeInsets.all(16.0), 
              itemBuilder: this.listviewBuilder
        );
  }

  /*
   * the row iterator [i]. The iterator begins at 0 and increments each time the function is called. 
   * It increments twice for every suggested word pairing: once for the ListTile, and once for the Divider.
   */
  Widget listviewBuilder(BuildContext context, int i) {
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
    return _buildRow(this._suggestions[index]);
  }

  Widget _buildRow(WordPair pair) {
    //check to ensure that a word pairing has not already been added to favorites.
    final alreadySaved = this._saved.contains(pair);

    // If a word entry has already been added to favorites, tapping it again removes it from favorites.
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: this._biggerFont,
      ),
      trailing: Icon(alreadySaved ? Icons.favorite: Icons.favorite_border, 
                    color: alreadySaved ? Colors.red : null,
                    ),
      //this keyword survives in these nested functions
      // look at https://dart.dev/guides/language/language-tour#lexical-closures
      onTap: () => { 
         this.setState(() => {
            if (alreadySaved) {
              this._saved.remove(pair)
            } else { 
              this._saved.add(pair)
            } 
          })
         },
    );
  }
}
/*
In Flutter, the Navigator manages a stack containing the app's routes. Pushing a route onto 
the Navigator's stack updates the display to that route. Popping a route from the Navigator's 
stack returns the display to the previous route.
*/
// This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  // ignore: unused_element
  // Icons._();     
