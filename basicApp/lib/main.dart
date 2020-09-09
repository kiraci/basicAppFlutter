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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("Bu ilk yazı"),
          FlatButton(
            child: Text("Button"),
            onPressed: () {},
            color: Colors.amber[500],
          ),
          Container(
            child: Text("bu son"),
            padding: EdgeInsets.all(30.0),
            color: Colors.blue[500],
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