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
  // } pathPot
  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Row(
          children: <Widget>[
            Expanded(
              child:
                  Text('Deliver features faster', textAlign: TextAlign.center),
            ),
            Expanded(
              child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
            ),
            Expanded(
                child: Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
              ],
            )),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain, // otherwise the logo will be tiny
                child: const FlutterLogo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
ROW LAYOUT ALGORITHM

Layout algorithm

This section describes how a Row is rendered by the framework. See BoxConstraints for an introduction to box layout models.

Layout for a Row proceeds in six steps:

    1) Layout each child a null or zero flex factor (e.g., those that are not Expanded) with 
    unbounded horizontal constraints and the incoming vertical constraints. If the 
    crossAxisAlignment is CrossAxisAlignment.stretch, instead use tight vertical constraints 
    that match the incoming max height.

    2) Divide the remaining horizontal space among the children with non-zero flex 
      factors (e.g., those that are Expanded) according to their flex factor. For example, 
      a child with a flex factor of 2.0 will receive twice the amount of horizontal space as 
      a child with a flex factor of 1.0.

    3) Layout each of the remaining children with the same vertical constraints as in step 1, 
      but instead of using unbounded horizontal constraints, use horizontal constraints based 
      on the amount of space allocated in step 2. Children with Flexible.fit properties that are 
      FlexFit.tight are given tight constraints (i.e., forced to fill the allocated space),
       and children with Flexible.fit properties that are FlexFit.loose are given loose constraints 
       (i.e., not forced to fill the allocated space).
    
    4) The height of the Row is the maximum height of the children (which will always satisfy the 
      incoming vertical constraints).
    
    5) The width of the Row is determined by the mainAxisSize property. If the 
    mainAxisSize property is MainAxisSize.max, then the width of the Row is the
    max width of the incoming constraints. If the mainAxisSize property is MainAxisSize.min, 
    then the width of the Row is the sum of widths of the children (subject to the incoming constraints).
    
    
    6) Determine the position for each child according to the mainAxisAlignment and the 
      crossAxisAlignment. For example, if the mainAxisAlignment is MainAxisAlignment.spaceBetween, 
      any horizontal space that has not been allocated to children is divided evenly and placed 
      between the children.

*/

/*
COLUMN LAYOUT ALGORITHM
Layout algorithm

This section describes how a Column is rendered by the framework. See BoxConstraints for an introduction to box layout models.

Layout for a Column proceeds in six steps:

    1) Layout each child a null or zero flex factor (e.g., those that are not Expanded) with 
       unbounded vertical constraints and the incoming horizontal constraints. If the crossAxisAlignment 
       is CrossAxisAlignment.stretch, instead use tight horizontal constraints that match the incoming max width.
    
    2) Divide the remaining vertical space among the children with non-zero flex factors 
      (e.g., those that are Expanded) according to their flex factor. For example, a child 
      with a flex factor of 2.0 will receive twice the amount of vertical space as a child with a 
      flex factor of 1.0.
    
    3) Layout each of the remaining children with the same horizontal constraints as in step 1, 
       but instead of using unbounded vertical constraints, use vertical constraints based on the 
       amount of space allocated in step 2. Children with Flexible.fit properties that are 
       FlexFit.tight are given tight constraints (i.e., forced to fill the allocated space), 
       and children with Flexible.fit properties that are FlexFit.loose are given loose constraints 
       (i.e., not forced to fill the allocated space).
    
    4) The width of the Column is the maximum width of the children (which will always satisfy the incoming horizontal constraints).
    
    5) The height of the Column is determined by the mainAxisSize property. If the 
       mainAxisSize property is MainAxisSize.max, then the height of the Column is the max 
       height of the incoming constraints. If the mainAxisSize property is MainAxisSize.min, 
       then the height of the Column is the sum of heights of the children (subject to the incoming constraints).
    
    6) Determine the position for each child according to the mainAxisAlignment and the crossAxisAlignment. 
       For example, if the mainAxisAlignment is MainAxisAlignment.spaceBetween, any vertical space 
       that has not been allocated to children is divided evenly and placed between the children.

*/

// Text(
//                 'Hello, $_name! How are you takes the Center Widget and makes it the root of the widget tree.?',
//                 textAlign: TextAlign.center,
//                 overflow: TextOverflow.ellipsis,
//                 style: TextStyle(fontWeight: FontWeight.bold),
//                 textDirection: TextDirection.ltr,
//               )
// Widget build(BuildContext context) {
//     print(context);
//     // final wordPair = WordPair.random();
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       home: ListScreen(),
//     );
//   }
