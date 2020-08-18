import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const double kWeatherButtonSize = 56.0;
const double kWeatherIconSize = 36.0;

// For the different weathers we are displaying different gradient backgrounds,
// these are the colors for top and bottom.
const List<Color> kBackgroundColorsTop = <Color>[
  const Color(0xff5ebbd5),
  const Color(0xff0b2734),
  const Color(0xffcbced7)
];

const List<Color> kBackgroundColorsBottom = <Color>[
  const Color(0xff4aaafb),
  const Color(0xff4c5471),
  const Color(0xffe0e3ec)
];

var kAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(fontWeight: FontWeight.bold),
  animationDuration: Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
  ),
);
