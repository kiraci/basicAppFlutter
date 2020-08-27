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
      body: Center(
        child: IconButton(
          icon: Icon(
             Icons.access_alarms
          ), 
          onPressed: () {
            print( "Alarm has started in console..." );
          },
          iconSize: 100.0,
          color: Colors.deepOrangeAccent,
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click!"),
        backgroundColor: Colors.pink[600],
      ),
    );
  }
}