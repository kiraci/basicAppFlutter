import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map dataFromLoading = {}; 

  @override
  Widget build(BuildContext context) {

    
    dataFromLoading = dataFromLoading.isNotEmpty ? dataFromLoading : ModalRoute.of(context).settings.arguments;
    print(dataFromLoading);

    String bgImage = dataFromLoading['isDayTime'] ? "images/day.png" : "images/night.png";
    Color topColor = dataFromLoading['isDayTime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
      backgroundColor: topColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("$bgImage"),
              fit: BoxFit.cover,
              ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  FlatButton.icon(
                    onPressed: () async{
                      dynamic result = await Navigator.pushNamed(context, "/location");
                      setState(() {
                        dataFromLoading = {
                          "location": result['location'],
                          "time": result['time'],
                          "flag": result['flag'],
                          'isDayTime': result['isDayTime']
                        };
                      });
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
          ),
        )
      ),
    );
  }
}