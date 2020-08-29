import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_forecaster_joana_barros/styles/colors.dart';
import 'package:weather_forecaster_joana_barros/styles/styles.dart';

class FullConditionItem extends StatelessWidget {
  final iconsize, icon, value;
  FullConditionItem(this.iconsize, this.icon, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: WStyles.deviceHeight(context) * 0.0009, bottom: 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(4.0)),
            child: FaIcon(
              icon,
              size: iconsize,
              color: WColor.fonts,
            ),
          ),
          Container(
              width: 100,
              child: Text(
                value,
                style: WStyles.info,
              )),
        ],
      ),
    );
  }
}
