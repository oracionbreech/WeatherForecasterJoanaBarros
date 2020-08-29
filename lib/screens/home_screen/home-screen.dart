import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:weather_forecaster_joana_barros/notifiers/navigation-notifier.dart';
import 'package:weather_forecaster_joana_barros/components/condition.dart';
import 'package:weather_forecaster_joana_barros/components/country.dart';
import 'package:weather_forecaster_joana_barros/components/full-condition.dart';
import 'package:weather_forecaster_joana_barros/components/hourly-condition.dart';
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
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10.0)),
                      child: FlatButton(
                        color: pageIndex == 0 ? WColor.primary : Colors.white,
                        splashColor: Colors.white,
                        onPressed: () {
                          nav.setPageIndex(0);
                          nav.stop();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: WStyles.deviceHeight(context) * 0.072,
                          child: FaIcon(
                            FontAwesomeIcons.compass,
                            color: pageIndex == 0 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: pageIndex == 1 ? WColor.primary : Colors.white,
                      onPressed: () => {nav.setPageIndex(1)},
                      child: Container(
                        alignment: Alignment.center,
                        height: WStyles.deviceHeight(context) * 0.072,
                        child: FaIcon(
                          FontAwesomeIcons.mapPin,
                          color: pageIndex == 1 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(10.0)),
                      child: FlatButton(
                        color: pageIndex == 2 ? WColor.primary : Colors.white,
                        onPressed: () {
                          nav.setPageIndex(2);
                          nav.start(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: WStyles.deviceHeight(context) * 0.072,
                          child: FaIcon(
                            FontAwesomeIcons.slidersH,
                            color: pageIndex == 2 ? Colors.white : Colors.grey,
                          ),
                        ),
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
