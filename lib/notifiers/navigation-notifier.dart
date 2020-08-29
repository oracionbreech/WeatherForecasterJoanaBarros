import 'dart:async';
import 'dart:isolate';

import 'package:flutter/material.dart';

class NavigationNotifier with ChangeNotifier {
  int _pageIndex = 1;
  String _timeOfDay;
  BuildContext _context;
  int get pageIndex => _pageIndex;
  String get timeOfDay => _timeOfDay;

  void startTimeGetter(context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _timeOfDay = TimeOfDay.now().format(context);
      notifyListeners();
    });
  }

  Isolate isolate;
  bool running = false;
  bool paused = false;
  String message = '';
  String threadStatus = '';
  ReceivePort receivePort;
  Capability capability;

  void start(BuildContext ctx) async {
    print('Starting');
    if (running) {
      return;
    }
    running = true;
    message = 'Starting....';
    threadStatus = 'Running....';
    receivePort = ReceivePort();
    _context = ctx;
    isolate = await Isolate.spawn(_isolateHandler, receivePort.sendPort);
    receivePort.listen(_handleMessage, onDone: () {
      print('Done');
      threadStatus = 'Stopped';
    });
  }

  void pause() {
    if (null != isolate) {
      paused ? isolate.resume(capability) : capability = isolate.pause();
      paused = !paused;
      threadStatus = paused ? 'Paused' : 'Resumed';
    }
  }

  void stop() {
    print('Stopping');
    if (null != isolate) {
      running = false;
      receivePort.close();
      isolate.kill(priority: Isolate.immediate);
      isolate = null;
    }
  }

  static void _isolateHandler(SendPort sendPort) async {
    heavyOperation(sendPort);
  }

  void _handleMessage(dynamic data) {
    message = data;
    print(message);
    _timeOfDay = message;
    print(_timeOfDay);
  }

  static void heavyOperation(SendPort sendPort) {
    Timer.periodic(Duration(seconds: 1), (e) {
      sendPort.send(TimeOfDay.now().minute.toString());
    });
  }

  void setPageIndex(int index) {
    _pageIndex = index;
    notifyListeners();
  }
}
