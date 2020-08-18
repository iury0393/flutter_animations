import 'package:flutter/material.dart';
import 'package:flutter_animations/constants.dart';
import 'package:flutter_animations/screens/sprite/rain/sprite_rain_page.dart';
import 'package:flutter_animations/screens/sprite/weather/sprite_weather_page.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatelessWidget {
  static const String id = '/home';

  void alertFlutter(context) {
    Alert(
      context: context,
      style: kAlertStyle,
      type: AlertType.info,
      title: "Flutter Anima",
      desc: "Projeto para treino de animações.",
      buttons: [
        DialogButton(
          child: Text(
            "Entendi",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),
          radius: BorderRadius.circular(20.0),
        ),
      ],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Flutter Anima'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueAccent,
        label: Text('Info'),
        icon: Icon(
          Icons.announcement,
          color: Colors.white,
        ),
        onPressed: () {
          alertFlutter(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SpriteWeatherPage.id);
                  },
                  child: Text(
                    'Sprite Weather',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SpriteRainPage.id);
                  },
                  child: Text(
                    'Sprite Rain',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Animation #3',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Animation #4',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Animation #5',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Animation #6',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
