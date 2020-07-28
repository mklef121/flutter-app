// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // @override
  // StatelessElement createElement() {
  //   // TODO: implement createElement
  //   return super.createElement();
  // } pathPot
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
          // backgroundColor: Colors.grey,
            appBar: AppBar(
              title: Text('Flutter layout demo'),
            ),
            body:  Card(
                child: Column(
                    children: [ratings(),descAndIcons()]
              ))
        )
    );
  }

  Widget ratings() {
    return Container(
        // decoration: BoxDecoration(border: Border.all(width: 1)),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [stars(), rateText()],
        ));
  }

  Widget stars() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.orange),
      ],
    );
  }

  Widget rateText() {
    return Text("7 reviews", style: descTextStyle);
  }

  final descTextStyle = const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );

//  Expanded( child:Image.asset('assets/images/mbooks.jpg'))
  Widget childText() {
    return const Text(
      "Hello World",
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
      ),
      textDirection: TextDirection.ltr,
    );
  }

  Widget descAndIcons() {

     iconsColumn(IconData icon, String firstText, String secondText){
       return Column(
          children: [
            Icon(icon, color: Colors.green[500]),
            Text(firstText),
            Text(secondText),
          ],
        );
    }


    return DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20),
        // decoration: BoxDecoration(border: Border.all(width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            iconsColumn(Icons.kitchen,'PREP:', '25 min'),
            iconsColumn(Icons.restaurant, 'PREP:', '1 Hr'),
            iconsColumn(Icons.timer, 'FEEDS:', '4-6')
          ]
        ),
      )
    );
    //final Widget parenStyle = DefaultTextStyle.merge(child: null);
  }
}

/*
Expanded( child:Image.asset('assets/images/mbooks.jpg')),
                  Expanded( flex: 2,child:Image.asset('assets/images/mbooks.jpg')),
                  Expanded( child:Image.asset('assets/images/mbooks.jpg'))
return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
    */
