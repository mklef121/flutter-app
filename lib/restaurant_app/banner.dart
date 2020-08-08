
import 'package:flutter/material.dart';

List<String> bannerItems = ["Burger", "Pizzar", "chilli","Chicken and Beef"];
List<String> bannerImaages = ["assets/images/food-1.webp", 
                              "assets/images/food-2.webp", 
                              "assets/images/food-3.jpg",
                              "assets/images/food-4.jpg"];
class BannerWidget extends StatelessWidget{

  PageController controller;
  BannerWidget(){
    this.controller = new PageController(initialPage: 1);
  }
  @override
  Widget build(BuildContext context){
    MediaQueryData media  = MediaQuery.of(context);
    // print((411.4*9)/16);
    // print("Here ${media.size.width}");
    // print(media.size.width*9/16);
    var pages = bannerItems.map((e){
      return Container(
        
      );
    });
    return Container(
      height: media.size.width*9/16,
      width: media.size.width,
      child: PageView(
        controller: this.controller,
        children: <Widget>[
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.cyan,
          ),
          Container(
            color: Colors.deepPurple,
          ),
        ],
      )
    );
  }
}