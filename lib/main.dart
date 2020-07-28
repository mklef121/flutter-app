
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
            body:  _buildImageColumn()
        )
    );
  }

  Widget _buildImageColumn() => Container(
            decoration: BoxDecoration(color: Colors.black26) ,
            child:Column(
              children: [ _buildImageRow(1),_buildImageRow(2),]
            )
          );

  Widget _buildImageRow(int row) => Row(
          children: [_decorateImage( row ==1 ? 1: 3), _decorateImage( row ==1 ? 2: 4)],
        );     

  Widget _decorateImage(int numb) => Expanded(
          child: Container(
            decoration:BoxDecoration(),
            child: Image.asset("assets/images/img-$numb.jpg"),
          ),
        );
}