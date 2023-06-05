import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/weather.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WeatherForecastPage("Moscow");
  }
}

class WeatherForecastPage extends StatefulWidget {
  const WeatherForecastPage(this.cityName);
  final String cityName;
  @override
  State<WeatherForecastPage> createState() => _WeatherForecastPageState();
}

class _WeatherForecastPageState extends State<WeatherForecastPage> {
  List<Weather> weatherForecast = [
  Weather(DateTime.now(), 20,90, "04d"),
  Weather(DateTime.now().add(Duration(hours:3)), 23, 50, "03d"),
    Weather(DateTime.now().add(Duration(hours:6)), 25, 50, "02d"),
    Weather(DateTime.now().add(Duration(hours:9)), 28, 52, "01d"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moscow weather:',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Weather Forecast")
        ),
        body:
        ListView.builder(
            itemCount: weatherForecast.length,
            itemBuilder: (BuildContext context,int index) {
          return WeatherListItem(weatherForecast[index]);
        }),

      ),
    );
  }
}
