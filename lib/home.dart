import 'package:flutter/material.dart';
import 'tabone.dart';
import 'tabtwo.dart';
import 'tabthree.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


// SingleTickerProviderStateMixin MIxin brings an animation ticker that can be disposed 
//When this component is about to be displaced
class _HomeState extends State<Home> with SingleTickerProviderStateMixin<Home>{

  TabController controller;

  final List<Tab> myTabs = [
    Tab(icon:Icon(Icons.face)),
    Tab(icon:Icon(Icons.headset)),
    Tab(icon:Icon(Icons.share)),
  ];
  @override
  void initState() {
    //This controller ensures animation when switching between tabs
    // The vsync passed in is a timer, used to tell Flutter to send animation
    //Frames to it whenver there is an animation change on the screen
    controller = new TabController(length: this.myTabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            // backgroundColor: Colors.grey,
            appBar: AppBar(
              title: Text('Grid View'),
              backgroundColor: Colors.green,
              bottom: new TabBar(
                tabs: this.myTabs, 
                controller: this.controller,
                indicator: BoxDecoration(
                  // color: Colors.black12,
                  border: Border(
                    bottom: BorderSide(width: 5,color: Colors.black26)
                  )
                ),
                ),
            ),
            body: new TabBarView(
              controller: this.controller,
              children: [
                new TabOne(),
                new TabTwo(),
                new TabThree()
              ],
              )
    );
  }
}