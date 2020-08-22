import 'dart:async';

import 'package:flutter/material.dart';

class NavigationNotifier with ChangeNotifier {
  int _pageIndex = 1;
  String _timeOfDay;

  int get pageIndex => _pageIndex;
  String get timeOfDay => _timeOfDay;

  void startTimeGetter(context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _timeOfDay = TimeOfDay.now().format(context);
      notifyListeners();
    });
  }

  void setPageIndex(int index) {
    _pageIndex = index;
    notifyListeners();
  }
}
