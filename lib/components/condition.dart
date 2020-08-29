import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_forecaster_joana_barros/styles/styles.dart';

class Condition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: WStyles.deviceWidth(context),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
            width: WStyles.deviceWidth(context) / 3,
            child: Text(
              "14 °C",
              style: WStyles.temperature,
            ),
          ),
          Container(
              width: WStyles.deviceWidth(context) / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Cloudy",
                    style: WStyles.condition,
                  ),
                  Text(
                    "16° / 11°",
                    style: WStyles.condition,
                  )
                ],
              )),
          Container(
            alignment: Alignment.center,
            width: WStyles.deviceWidth(context) / 3,
            child: FaIcon(
              FontAwesomeIcons.cloud,
              color: Color.fromARGB(50, 10, 10, 10),
              size: 50.0,
            ),
          )
        ],
      ),
    );
  }
}
