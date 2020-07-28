import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Miracle is a Genius"),
        centerTitle: true,
        actions: [
          Icon(Icons.fiber_dvr),
          Icon(Icons.fiber_pin)
        ],
      ),
      drawer: Drawer(
      
        child: ListView(
        children: [
          Container(
            height: 50,
            width: 80,
            color: Colors.green
          ),
          Container(
            height: 50,
            width: 80,
            color: Colors.red         
          ),
          ListTile(
              leading: Icon(Icons.file_upload),
              title: Text("First guy"),
              subtitle: Text("The subtitle of the first guy"),
              trailing: Icon(Icons.file_download),
          )
          
        ],
      )
      ),

      body: Center(
        child: Card(
            child: Container( 
              height: 300,
              width: 300,
              child: Column(
                
                children: [
                  Container(height: 120, width: 300, color: Colors.black,),
                  Container(height: 180, width: 300, color: Colors.white,
                    child: Padding(padding: EdgeInsets.symmetric(horizontal:0, vertical: 20), child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Text("MKlef"),
                        Text("1.2M followers"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          FlatButton(
                            onPressed: (){

                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),
                            color: Colors.blue,
                            child: Text("Hello", style: TextStyle(color: Colors.white),),
                          
                          ),

                          Icon(Icons.chat_bubble_outline)
                        ],)
                      ]
                    )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}

/*
ListView(
        children: [
          Container(
            height: 50,
            width: 80,
            color: Colors.green
          ),
          Container(
            height: 50,
            width: 80,
            color: Colors.red         
          ),
          
        ],
      ),
      */

