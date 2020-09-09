import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getTime() async {

    Response response = await get('http://worldtimeapi.org/api/timezone/Europe/Istanbul');

    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    DateTime currentTime = DateTime.parse(datetime);
    currentTime = currentTime.add(Duration(hours: int.parse(offset)));

    print(currentTime);

  }

  @override
  void initState(){
    super.initState();
    getTime();
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