import 'package:flutter/cupertino.dart';

class CupertinoFormModel with ChangeNotifier {
  DateTime _dates = DateTime.now();
  DateTime _time = DateTime.now();
  DateTime _dateTime = DateTime.now();
  Duration _timeDetail = const Duration();
  int _segment = 0;

  DateTime get dates => _dates;

  set dates(DateTime value) {
    _dates = value;
    notifyListeners();
  }

  get time => _time;

  set time(value) {
    _time = value;
    notifyListeners();
  }

  get dateTime => _dateTime;

  set dateTime(value) {
    _dateTime = value;
    notifyListeners();
  }

  get timeDetail => _timeDetail;

  set timeDetail(value) {
    _timeDetail = value;
    notifyListeners();
  }

  get segment => _segment;

  set segment(value) {
    _segment = value;
    notifyListeners();
  }
}
