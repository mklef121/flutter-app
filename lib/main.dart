import 'package:flutter/material.dart';
import 'restaurant_app/base_class.dart' show HomePage;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Restaurant App',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: new HomePage()
        );
  }
}
