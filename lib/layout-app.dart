import 'package:flutter/material.dart';
import 'layout-button-row.dart' show ButtonRow;
import 'layout-title-section.dart' show titleSection;

class LayOutApp extends StatefulWidget {
  @override
  _LayOutAppState createState() => _LayOutAppState();
}

class _LayOutAppState extends State<LayOutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Practise"),
      ),
      body: ListView(
        children: [
          imageSection,
          titleSection(),
          new ButtonRow(),
          textSection
        ],
      ) 
    );
  }
}

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

Image imageSection = Image.asset(
               'assets/images/mbooks.jpg',
               width: 600,
               height: 240,
               fit: BoxFit.cover,
             );