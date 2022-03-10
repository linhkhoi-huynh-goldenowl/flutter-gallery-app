import 'package:flutter/material.dart';

class RowColumnModel with ChangeNotifier {
  bool _chooseRow = true;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;
  VerticalDirection _verticalDirection = VerticalDirection.up;
  bool _textDirection = true;
  TextBaseline _textBaseline = TextBaseline.alphabetic;
  bool get chooseRow => _chooseRow;

  set chooseRow(bool value) {
    _chooseRow = value;
    notifyListeners();
  }

  get mainAxisSize => _mainAxisSize;

  set mainAxisSize(value) {
    _mainAxisSize = value;
    notifyListeners();
  }

  get mainAxisAlignment => _mainAxisAlignment;

  set mainAxisAlignment(value) {
    _mainAxisAlignment = value;
    notifyListeners();
  }

  get crossAxisAlignment => _crossAxisAlignment;

  set crossAxisAlignment(value) {
    _crossAxisAlignment = value;
    notifyListeners();
  }

  get verticalDirection => _verticalDirection;

  set verticalDirection(value) {
    _verticalDirection = value;
    notifyListeners();
  }

  get textDirection => _textDirection;

  set textDirection(value) {
    _textDirection = value;
    notifyListeners();
  }

  get textBaseline => _textBaseline;

  set textBaseline(value) {
    _textBaseline = value;
    notifyListeners();
  }
}
