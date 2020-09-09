import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build( BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("My Fancy App"),
        centerTitle: true,
        backgroundColor: Colors.pink[600],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Text( "Flex: 3" ),
              color: Colors.blue[500],
              padding: EdgeInsets.all(30.0),
            ),
          ),Expanded(
            flex: 3,
            child: Container(
              child: Text( "Flex: 2" ),
              color: Colors.blue[600],
              padding: EdgeInsets.all(30.0),
            ),
          ),Expanded(
            flex: 2,
            child: Container(
              child: Text( "Flex: 2" ),
              color: Colors.blue[200],
              padding: EdgeInsets.all(20.0),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click!"),
        backgroundColor: Colors.pink[600],
      ),
    );
  }
}