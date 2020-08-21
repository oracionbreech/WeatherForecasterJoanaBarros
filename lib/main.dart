import 'package:flutter/material.dart';
import 'package:weather_forecaster_joana_barros/screens/home_screen/home-screen.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
