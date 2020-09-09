import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map dataFromLoading = {}; 

  @override
  Widget build(BuildContext context) {

    dataFromLoading = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, "/location");
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text("Change Location"),
                  color: Colors.blue[100],
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                ),
                SizedBox(height: 30.0),
                Text(
                  dataFromLoading["location"],
                  style: TextStyle(
                    fontFamily: "IndieFlower",
                    fontSize: 35.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  dataFromLoading["time"],
                  style: TextStyle(
                    fontFamily: "IndieFlower",
                    fontSize: 65.0,
                  ),
                ),
              ]
            ),
          ),
        )
      ),
    );
  }
}