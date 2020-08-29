import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_forecaster_joana_barros/styles/styles.dart';

class Country extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Póvoa de Varzim",
                  style: WStyles.region,
                ),
                Text(
                  "Portugal",
                  style: WStyles.country,
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(20, 0, 0, 0),
                    offset: Offset.fromDirection(0, 0),
                    blurRadius: 7.0)
              ], borderRadius: BorderRadius.circular(8.0), color: Colors.white),
              child: Icon(
                Icons.more_horiz,
                color: Colors.grey,
              ),
            )
          ],
        ));
  }
}
