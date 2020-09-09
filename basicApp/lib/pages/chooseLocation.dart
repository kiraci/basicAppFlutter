import 'package:flutter/material.dart';


class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    String username = await Future.delayed(Duration(seconds: 3), () {
      return "osman";
    });

    String password = await Future.delayed( Duration(seconds: 3), () {
      return "osman123.";
    });

    if( username == "osman"  && password == "osman123."){
      print("user logged in...");
    }else{
      print("user could not log in...");
    }

    print( '$username - $password' );

  }

  @override
  void initState(){
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text( "Choose Location Page" ),
        centerTitle: true,
        elevation: 0
      ),
      body: Text("Choosing Location"),
    );
  }
}