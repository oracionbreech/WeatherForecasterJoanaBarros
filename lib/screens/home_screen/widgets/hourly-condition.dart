import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_forecaster_joana_barros/styles/styles.dart';

// ignore: must_be_immutable
class HourlyCondition extends StatelessWidget {
  var defaultbackgroundColor = Colors.white;
  HourlyCondition({Color backgroundColor, this.defaultbackgroundColor}) {
    this.defaultbackgroundColor = backgroundColor != null
        ? backgroundColor
        : Color.fromARGB(150, 255, 255, 255);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        margin: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        width: 80.0,
        decoration: BoxDecoration(
            color: defaultbackgroundColor,
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("1 PM", style: WStyles.hourly),
            FaIcon(
              FontAwesomeIcons.cloud,
              color: Colors.white,
            ),
            Text("14 °C", style: WStyles.hourlytemperature),
          ],
        ),
      ),
    );
  }
}
