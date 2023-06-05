import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class Weather{
  static const String weatherURL = "http://openweathermap.org/img/w/";
  DateTime dateTime;
  num degree;
  int clouds;
  String iconURL;

  String getIconUrl(){
    return weatherURL + iconURL + ".png";
  }

  Weather(this.dateTime, this.degree, this.clouds, this.iconURL);

}

class WeatherListItem extends StatelessWidget {
  static var _dateFormat = DateFormat('yyyy-MM-dd - hh:mm');
  final Weather weather;
  const WeatherListItem(this.weather);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(16.0),
    child: Row(
      children: [
        Expanded(
            flex: 3,
            child: Text(_dateFormat.format())),
        Expanded(
            flex: 1,
            child: Text(weather.degree.toString() + " C")),
        Expanded(
            flex: 1,
            child: Image.network(weather.getIconUrl())),
      ],
    ),);
  }
}
