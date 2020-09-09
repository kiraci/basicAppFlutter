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
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Information Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage( "images/profile.png" ),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.red,
            ),
            Text( 
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height:10.0),
            Text(
              "Osman Buğra Aydın",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text( 
              "FLUTTER LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height:10.0),
            Text(
              "3 / 10",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox( height: 8.0,),
            Text(
              "- Beginner not because i am bad :)",
              style: TextStyle(
                color: Colors.amberAccent[700],
                letterSpacing: 2.0,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.blue,
                ),
                SizedBox(width: 10.0,),
                Text(
                  "osmanbugraaydin@gmail.com",
                  style: TextStyle(
                    fontFamily: "IndieFlower",
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}