import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:weather_forecaster_joana_barros/notifiers/navigation-notifier.dart';
import 'package:weather_forecaster_joana_barros/screens/home_screen/widgets/condition.dart';
import 'package:weather_forecaster_joana_barros/screens/home_screen/widgets/country.dart';
import 'package:weather_forecaster_joana_barros/screens/home_screen/widgets/full-condition.dart';
import 'package:weather_forecaster_joana_barros/screens/home_screen/widgets/hourly-condition.dart';
import 'package:weather_forecaster_joana_barros/styles/colors.dart';
import 'package:weather_forecaster_joana_barros/styles/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NavigationNotifier nav = Provider.of<NavigationNotifier>(context);
    int pageIndex = nav.pageIndex;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Country(),
            Condition(),
            Container(
              padding: EdgeInsets.only(
                  top: 10.0, left: 10.0, right: 10.0, bottom: 0.0),
              height: WStyles.deviceHeight(context) * 0.63,
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
                    height: WStyles.deviceHeight(context) * 0.7 / 0.7,
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
            ),
            Container(
              height: WStyles.deviceHeight(context) * 0.072,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: FlatButton(
                      splashColor: Colors.white,
                      onPressed: () => {nav.setPageIndex(0)},
                      child: FaIcon(
                        FontAwesomeIcons.compass,
                        color: pageIndex == 0 ? Colors.orange : Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () => {nav.setPageIndex(1)},
                      child: FaIcon(
                        FontAwesomeIcons.mapPin,
                        color: pageIndex == 1 ? Colors.orange : Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () => {nav.setPageIndex(2)},
                      child: FaIcon(
                        FontAwesomeIcons.slidersH,
                        color: pageIndex == 2 ? Colors.orange : Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
