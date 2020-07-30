
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
          // backgroundColor: Colors.grey,
            appBar: AppBar(
              title: Text('Flutter Standard widgets'),
            ),
            body:  Text("hdjd")
        )
    );
  }

}