import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  late String location;  // Location name for the UI
  late String time;   // The time in that location
  late String flag;   // URL to an asset flag icon
  late String url;    // Location URL for api endpoint
  late bool isDaytime;    // true or false if daytime or not

  WorldTime({required this.location, required this.flag, required this.url });
  Future <void> getTime() async {

    try{

      //  make the request
      Response response = await get(Uri.parse('https://www.worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      // print(data);

      //  get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      // print(datetime);
      // print(offset);

      // Create DateTime Object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);

      //  Set the time property
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    }catch(e){
      print('caught error: $e');
      time = 'could not get time data';
    }

  }
}


