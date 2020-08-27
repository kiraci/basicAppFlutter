import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        centerTitle: true,
        backgroundColor: Colors.pink[600],
      ),
      body: Center(
        child: Text(
          "Hello Baby.",
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
            fontFamily: "IndieFlower",
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click!"),
        backgroundColor: Colors.pink[600],
      ),
    )
  ));
}