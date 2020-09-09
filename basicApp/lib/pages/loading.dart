import 'package:flutter/material.dart';
import 'package:basicApp/services/worldTime.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {

    WorldTime istanbul = WorldTime( location: "Istanbul", flag: "istanbul.png", url: "Europe/Istanbul" );
    await istanbul.getTime();

    Navigator.pushReplacementNamed(context, "/home", arguments: {
      "location": istanbul.location,
      "time": istanbul.time,
      "flag": istanbul.flag
    });

  }
  
  @override
  void initState(){
    super.initState();
    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome!")),
    );
  }
}