import 'package:flutter/material.dart';

class WrapChipModel with ChangeNotifier {
  bool _isElevation = false;
  bool _hasAvatar = false;
  bool _hasDeleteIcon = false;
  int _choose = 0;

  OutlinedBorder _shapeBorder = const StadiumBorder();
  bool _isSpacing = false;
  bool _runSpacing = false;

  bool _chooseIOS = false;
  bool _chooseAndroid = false;
  bool get chooseIOS => _chooseIOS;

  set chooseIOS(bool value) {
    _chooseIOS = value;
    notifyListeners();
  }

  get chooseAndroid => _chooseAndroid;

  set chooseAndroid(value) {
    _chooseAndroid = value;
    notifyListeners();
  }

  int get choose => _choose;

  set choose(int value) {
    _choose = value;
    notifyListeners();
  }

  OutlinedBorder get shapeBorder => _shapeBorder;

  set shapeBorder(OutlinedBorder value) {
    _shapeBorder = value;
    notifyListeners();
  }

  bool get isElevation => _isElevation;

  set isElevation(bool value) {
    _isElevation = value;
    notifyListeners();
  }

  get hasAvatar => _hasAvatar;

  set hasAvatar(value) {
    _hasAvatar = value;
    notifyListeners();
  }

  get hasDeleteIcon => _hasDeleteIcon;

  set hasDeleteIcon(value) {
    _hasDeleteIcon = value;
    notifyListeners();
  }

  get isSpacing => _isSpacing;

  set isSpacing(value) {
    _isSpacing = value;
    notifyListeners();
  }

  get runSpacing => _runSpacing;

  set runSpacing(value) {
    _runSpacing = value;
    notifyListeners();
  }
}
