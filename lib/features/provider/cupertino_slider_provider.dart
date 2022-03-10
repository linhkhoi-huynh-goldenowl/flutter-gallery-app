import 'package:flutter/cupertino.dart';
import 'package:gallery_app/features/models/cupertino_slider.dart';

class CupertinoSliderProvider with ChangeNotifier {
  final List _sliders = [CupertinoSliderModel(), CupertinoSliderModel()];
  List<CupertinoSliderModel> get sliders {
    return [..._sliders];
  }

  void setValue1(double value) {
    _sliders[0].valueSlider = value;
    notifyListeners();
  }

  void setValue2(double value) {
    _sliders[1].valueSlider = value;
    notifyListeners();
  }
}
