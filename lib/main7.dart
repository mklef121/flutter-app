import 'package:flutter/material.dart';
import 'package:first_flutter_app/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        home: new Home()
        );
  }
}
