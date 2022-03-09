import 'package:flutter/cupertino.dart';

class CupertinoSliderModel with ChangeNotifier {
  double value = 0;

  set valueSlider(newValue) {
    value = newValue;
    notifyListeners();
  }

  double get valueSlider => value;
}
