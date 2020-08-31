import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class NavigationNotifier with ChangeNotifier {
  static const platform = const MethodChannel("com.flutter.epic/epic");
  int _pageIndex = 1;
  String _timeOfDay;
  BuildContext _context;
  BuildContext get context => _context;
  int get pageIndex => _pageIndex;
  String get timeOfDay => _timeOfDay;

  NavigationNotifier(this._context);

  Future<void> setDate(MethodCall call) async {
    // type inference will work here avoiding an explicit cast
    print(call.method);
    print(call.arguments);
    _timeOfDay = call.arguments;
  }

  void printy() async {
    try {
      platform.invokeMethod('GetDate');
      platform.setMethodCallHandler(this.setDate);
    } catch (e) {
      print(e);
    }
  }

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
