import 'package:flutter/material.dart';

List<String> bannerItems = ["Burger", "Pizzar", "chilli", "Chicken and Beef"];
List<String> bannerImaages = [
  "assets/images/food-1.webp",
  "assets/images/food-2.webp",
  "assets/images/food-3.jpg",
  "assets/images/food-4.jpg"
];

class BannerWidget extends StatelessWidget {
  final PageController controller =
      new PageController(initialPage: 1, viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    // print((411.4*9)/16);
    // print("Here ${media.size.width}");
    // print(media.size.width*9/16);
    List<Widget> banners = new List<Widget>();
    var radius = const BorderRadius.all(Radius.circular(20.0));
    for (int i = 0; i < bannerItems.length; i++) {
      var page = Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            child: Stack(fit: StackFit.expand, children: [
              //Using this container to add a shadow
              Container(
                decoration: BoxDecoration(
                    //This guy needs to have same radius as the image below
                    //SO the shadow does not shoot off the clipped border
                    borderRadius: radius,
                    // color:Colors.amber
                    boxShadow: [
                      BoxShadow(
                          //What part of the axis the shadow should go to
                          offset: Offset(2, 2),
                          blurRadius: 8.0,
                          color: Colors.black45)
                    ]),
              ),
              ClipRRect(
                borderRadius: radius,
                child: Image.asset(
                  bannerImaages[i],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: radius,
                      gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter))),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(bannerItems[i],
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
                        Text("More than 40% off",
                            style: TextStyle(fontSize: 12, color: Colors.white))
                      ]))
            ]),
          ));
      banners.add(page);
    }

    return Container(
        height: media.size.width * 9 / 16,
        width: media.size.width,
        child: PageView(controller: this.controller, children: banners));
  }
}
