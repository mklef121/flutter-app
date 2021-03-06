import 'package:first_flutter_app/restaurant_app/food_list.dart';
import 'package:flutter/material.dart';

import 'banner.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> null,
        backgroundColor: Colors.black,
        child: Icon(Icons.fastfood, color: Colors.white,),
      ),
      body: Container(
        width: width,
        height:height,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                navRow(),
                new BannerWidget(),
                new FoodList()
              ],
              ),
          )
        ),
      ),
    );
  }
}

Widget navRow () => Padding(
  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: ()=>{},
      ),
      Text("Foody", style:TextStyle(fontSize: 27, fontFamily: "Samanta")),
      IconButton(icon: Icon(Icons.person), onPressed: (){})
    ],
  ),
);