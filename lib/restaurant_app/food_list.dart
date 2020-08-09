import 'dart:convert';

import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Widget>>(
      initialData: null,
      future: createList(context),
      builder: (BuildContext context, AsyncSnapshot<List<Widget>> snapshot) {
        if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListView(
                primary: false,
                shrinkWrap: true,
                children: snapshot.data,
              ),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}

Future<List<Widget>> createList(BuildContext context) async {
  double width = MediaQuery.of(context).size.width;
  var items = new List<Widget>();
  String dataSet =
      await DefaultAssetBundle.of(context).loadString("assets/data.json");
  List<dynamic> decodedJson = jsonDecode(dataSet);

  decodedJson.forEach((element) {
    String foods = "";
    List<dynamic> foodList = element["placeItems"];
    foodList.forEach((meal) {
      foods = foods + meal + " | " ;
    });
    //Add each decoded item as a widget into the list array
    items.add(
      Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          margin: EdgeInsets.all(1.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, spreadRadius: 2.0, blurRadius: 5.0)
              ]),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                // child: Image.asset(element.placeImage, width: 80,height: 80,fit: BoxFit.cover,),
                child: Image.asset(
                  element['placeImage'],
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            Expanded(
              // width: 250,
                child: Padding(
                padding:EdgeInsets.all(8),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${element['placeName']}", 
                      style: TextStyle(
                        color:Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      foods, 
                      style: TextStyle(
                        color:Colors.black54,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Min Order: ${element["minOrder"]}", 
                      style: TextStyle(
                        color:Colors.black54
                      ),
                    ),
                  ],
                )
              ),
            )
            ],
          )
        ),
      )
    );
  });

  return items;
}
