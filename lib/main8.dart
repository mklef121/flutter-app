import 'package:flutter/material.dart';
import 'layout-app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        home: new LayOutApp()
        );
  }
}
