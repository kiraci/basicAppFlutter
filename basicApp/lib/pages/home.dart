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
    print(dataFromLoading);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget> [
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, "/location");
              },
              icon: Icon(Icons.edit_location),
              label: Text("Change Location"),
            )
          ]
        )
      ),
    );
  }
}