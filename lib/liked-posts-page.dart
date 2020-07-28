import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart' show WordPair;

//pass values as a prop
MaterialPageRoute<void> likedPage(Set<WordPair> likedWords, TextStyle fontSize){
  return MaterialPageRoute<void>(
        maintainState: false,
        builder: (BuildContext context) {
          //Turn every wordpair to a ListTile
          final tiles = likedWords.map((WordPair pair){
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: fontSize,
                ),
              );
            },
          );

          //Add a one pixel border in between each tile.
          //In the previous example, we used listviewBuilder() functon to build the tile and Divider()
          //Manually, 
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            //Creating this list view from the constructor means that
            //I have created an array of widgets to be displayed in the
            // List View Build context 
            body: ListView(children: divided),
          );
        }, // ...to here.
      );
}