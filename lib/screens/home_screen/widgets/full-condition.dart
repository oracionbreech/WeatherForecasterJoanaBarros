import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:weather_forecaster_joana_barros/styles/styles.dart';

import 'full-condition-item.dart';

class FullCondition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, top: 15.0),
      margin: EdgeInsets.only(left: 15.0, top: 20.0),
      height: WStyles.deviceHeight(context) * 0.8 * 0.35,
      width: MediaQuery.of(context).size.width / 2.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color.fromARGB(220, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TimeOfDay.now().format(context),
            style: WStyles.country,
          ),
          Text(
            DateFormat('EEEE').format(DateTime.now()) +
                ", " +
                DateTime.now().day.toString() +
                " " +
                DateFormat('MMMM').format(DateTime.now()),
            style: WStyles.date,
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: [
              FullConditionItem(15.0, FontAwesomeIcons.cloudRain, "51%"),
              FullConditionItem(15.0, FontAwesomeIcons.wind, "12-23 Km/H"),
              FullConditionItem(
                  15.0, FontAwesomeIcons.locationArrow, "South-West"),
              FullConditionItem(15.0, FontAwesomeIcons.water, "0.5-1 meter"),
            ],
          )
        ],
      ),
    );
  }
}
