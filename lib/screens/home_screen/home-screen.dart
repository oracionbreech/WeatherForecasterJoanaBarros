import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:weather_forecaster_joana_barros/screens/home_screen/widgets/condition.dart';
import 'package:weather_forecaster_joana_barros/screens/home_screen/widgets/country.dart';
import 'package:weather_forecaster_joana_barros/screens/home_screen/widgets/full-condition.dart';
import 'package:weather_forecaster_joana_barros/screens/home_screen/widgets/hourly-condition.dart';
import 'package:weather_forecaster_joana_barros/styles/colors.dart';
import 'package:weather_forecaster_joana_barros/styles/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Country(),
            Condition(),
            Container(
              padding: EdgeInsets.all(10.0),
              height: WStyles.deviceHeight(context) * 0.65,
              child: Stack(children: [
                Container(
                  child: Image(
                    height: MediaQuery.of(context).size.height * 0.8,
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/mauro-shared-pictures-9NmPiL78Y-g-unsplash.jpg'),
                  ),
                ),
                FullCondition(),
                Container(
                    padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
                    margin: EdgeInsets.only(
                        top: WStyles.deviceHeight(context) * 0.8 * 0.35 + 35.0),
                    height: WStyles.deviceHeight(context) * 0.7 / 0.8,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        HourlyCondition(backgroundColor: WColor.primary),
                        HourlyCondition(),
                        HourlyCondition(backgroundColor: WColor.primary),
                        HourlyCondition(),
                        HourlyCondition(backgroundColor: WColor.primary),
                        HourlyCondition(),
                        HourlyCondition(backgroundColor: WColor.primary),
                        HourlyCondition(),
                        HourlyCondition(backgroundColor: WColor.primary),
                        HourlyCondition(),
                        HourlyCondition(backgroundColor: WColor.primary),
                        HourlyCondition(),
                        HourlyCondition(backgroundColor: WColor.primary),
                        HourlyCondition(),
                        HourlyCondition(backgroundColor: WColor.primary),
                        HourlyCondition(),
                        HourlyCondition(backgroundColor: WColor.primary),
                        HourlyCondition(),
                        HourlyCondition(backgroundColor: WColor.primary),
                        HourlyCondition(),
                      ],
                    ))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
