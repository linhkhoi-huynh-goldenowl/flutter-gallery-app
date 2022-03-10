import 'package:flutter/cupertino.dart';

class CupertinoSwitchModel with ChangeNotifier {
  bool _value = false;

  set valueSwitch(newValue) {
    _value = newValue;
    notifyListeners();
  }

  bool get valueSwitch => _value;
}
