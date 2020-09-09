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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text( "This is a row." )
            ],
          ),
          Container(
            child: Text("Hello Flutter world"),
            color: Colors.purple[300],
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.only(top: 10.0),
          ),Container(
            child: Text("Hello world"),
            color: Colors.purple[400],
            padding: EdgeInsets.all(30.0),
            margin: EdgeInsets.only(top: 10.0),
          ),Container(
            child: Text(" world"),
            color: Colors.purple[500],
            padding: EdgeInsets.all(40.0),
            margin: EdgeInsets.only(top: 10.0),
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