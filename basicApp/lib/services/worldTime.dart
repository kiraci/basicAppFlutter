import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime{

  String location;
  String time; 
  String flag;
  String url;
  bool isDayTime;

  WorldTime({ this.location, this.flag, this.url });

  Future<void> getTime() async {

    try{

      Response response = await get('http://worldtimeapi.org/api/timezone/$url');

      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      DateTime currentTime = DateTime.parse(datetime);
      currentTime = currentTime.add(Duration(hours: int.parse(offset)));

      isDayTime = ( currentTime.hour > 7 && currentTime.hour < 20 ) ? true : false;
      time = DateFormat.jm().format(currentTime);

    }catch(error){

      print("The error is: $error");

      time = "time could not be determined...";

    }

  }


}