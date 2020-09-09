import 'package:flutter/material.dart';
import 'package:basicApp/services/worldTime.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
      WorldTime(url: 'Europe/Istanbul', location: 'Istanbul', flag: 'istanbul.png'),
	    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
	    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
	    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
	    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
	    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
	    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
	    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
	    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
	  ];

  void updateTime( index ) async{

    WorldTime choosen = locations[index];

    await choosen.getTime();

    Navigator.pop(context, {
      "location": choosen.location,
      "time": choosen.time,
      "flag": choosen.flag,
      "isDayTime": choosen.isDayTime
    });

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
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime( index );
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("images/${locations[index].flag}"),
                ),
              ),
            ),
          );
        }
        ),
    );
  }
}