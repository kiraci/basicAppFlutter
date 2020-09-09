import 'package:flutter/material.dart';
import 'package:basicApp/services/worldTime.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = "loading...";

  void setupWorldTime() async {

    WorldTime istanbul = WorldTime( location: "Istanbul", flag: "istanbul.png", url: "Europe/Istanbul" );
    await istanbul.getTime();
    print( istanbul.time );

    setState(() {
      time  = istanbul.time;
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
        child: Text("$time")),
    );
  }
}