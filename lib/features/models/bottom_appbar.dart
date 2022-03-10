import 'package:flutter/material.dart';

class BottomAppbarModel with ChangeNotifier {
  bool _notch = false;
  bool _floatButton = false;
  FloatingActionButtonLocation _floatingActionButtonLocation =
      FloatingActionButtonLocation.endDocked;
  bool get notch => _notch;

  set notch(bool value) {
    _notch = value;
    notifyListeners();
  }

  get floatButton => _floatButton;

  set floatButton(value) {
    _floatButton = value;
    notifyListeners();
  }

  get floatingActionButtonLocation => _floatingActionButtonLocation;

  set floatingActionButtonLocation(value) {
    _floatingActionButtonLocation = value;
    notifyListeners();
  }
}
