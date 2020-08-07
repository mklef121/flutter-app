import 'package:flutter/material.dart';

class TabOne extends StatefulWidget {
  @override
  _TabOneState createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(20, (index) {
          return Card(
            elevation: 10.0,
            margin: EdgeInsets.all(7),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              // BorderRadius.horizontal(left: Radius.elliptical(10, 16), right: Radius.circular(20))
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Container(
                child: Align( 
                    alignment: Alignment.center,
                    child: Text("$index",
                        style: TextStyle(
                          fontSize: 24,
                        )),
                )
            ),
          );
        }),
      ),
    );
  }
}
