import 'package:flutter/material.dart';

class ContainerModel with ChangeNotifier {
  BlendMode? _blendMode;
  bool _hasBoder = false;
  int _chooseBackground = 1;
  int _chooseRadius = 1;
  bool _isShadow = false;

  BlendMode? get blendMode => _blendMode;

  set blendMode(value) {
    _blendMode = value;
    notifyListeners();
  }

  get hasBoder => _hasBoder;

  set hasBoder(value) {
    _hasBoder = value;
    notifyListeners();
  }

  get chooseBackground => _chooseBackground;

  set chooseBackground(value) {
    _chooseBackground = value;
    notifyListeners();
  }

  get chooseRadius => _chooseRadius;

  set chooseRadius(value) {
    _chooseRadius = value;
    notifyListeners();
  }

  get isShadow => _isShadow;

  set isShadow(value) {
    _isShadow = value;
    notifyListeners();
  }
}
