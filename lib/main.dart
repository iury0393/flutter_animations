import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/home_page.dart';
import 'package:flutter_animations/screens/sprite/rain/sprite_rain_page.dart';
import 'package:flutter_animations/screens/sprite/weather/sprite_weather_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Anima',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.blueAccent,
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        SpriteWeatherPage.id: (context) => SpriteWeatherPage(),
        SpriteRainPage.id: (context) => SpriteRainPage(),
      },
    );
  }
}
