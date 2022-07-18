 import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Widget> myList = [
    {
      "Name": "Alviadn",
      "Age": 21,
      "Nim": 20190801245,
      "favColor": ["Black, "Red", "Amber"],
    },
    {
      "Name": "Udin",
      "Age": 21,
      "Nim": 20200801245,
      "favColor": ["White, "Red", "Green"]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID Apps"),
        ), // AppBar
        body: ListView(
          children: myList.map((data) {
            print(data["favColor"]);
            List myfavcolor = data["favColor"];
            print("------");
            print(myfavcolor);
            return Card(
              child: Column(
                children: [
                  // row
                  Row(
                    children: [
                      CircleAvatar(),
                      Column(
                        children: [
                          Text("Name: ${data['Name]}"),
                          Text("Age: ${data['Age]}"),
                          Text("Nim: ${data['Nim]}"),
                        ],
                      )  // Column
                    ],
                  ), // Row
                  // favColor 
                  Row(
                    children: myfavcolor.map((color) {
                      return Container(
                        color: Color.amber,
                        margin: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 8,
                        ), // EdgeInsets.symmetric
                        padding: EdgeInsets.all(10),                          
                        child: Text("color"),
                      ); // Container 
                    }).tolist(),
                  ), // Row
                ],
              ), // Column
            ); // Card
          }).toList(),
        ), // ListView
      ), // Scaffold
    ); // MaterialApp
  } 
}
