import 'package:flutter/material.dart';
import 'package:flutter_animations/constants.dart';

class SpriteWeatherButton extends StatelessWidget {
  const SpriteWeatherButton({
    this.icon,
    this.selected,
    this.onPressed,
    Key key,
  }) : super(key: key);

  final String icon;
  final bool selected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Color color;
    if (selected)
      color = Theme.of(context).primaryColor;
    else
      color = const Color(0x33000000);

    return new Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        color: color,
        type: MaterialType.circle,
        elevation: 0.0,
        child: Container(
          width: kWeatherButtonSize,
          height: kWeatherButtonSize,
          child: InkWell(
            onTap: onPressed,
            child: Center(
              child: Image.asset(
                icon,
                width: kWeatherIconSize,
                height: kWeatherIconSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
