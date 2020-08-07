import 'package:flutter/material.dart';

class TabTwo extends StatefulWidget {
  @override
  _TabTwoState createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        // maxCrossAxisExtent:250,
        // crossAxisSpacing:70,
        // primary: true,
        // scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        children: <Widget>[
          container(first_img),
          container(scnd_img),
          container(third_img),
          container(first_img),
          container(scnd_img),
          container(third_img)
          ],
        ),
    );
  }
}

const first_img = "https://images.pexels.com/photos/4890733/pexels-photo-4890733.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
const scnd_img = "https://images.pexels.com/photos/2335275/pexels-photo-2335275.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
const third_img = "https://images.pexels.com/photos/4617160/pexels-photo-4617160.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";

Widget container (String image){
  return new Container(
            child:new Card(
              elevation: 10,
              // margin: EdgeInsets.all(3),
              child: new Column(
                children: <Widget> [
                  Image.network(image,
                    fit: BoxFit.cover,
                    height: 147,
                    width: 200,
                  ),
                  new SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("\$89",style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20
                    ),),
                  )
                  
                ],
              ),
            )
          );
        
}