import 'package:flutter/material.dart';

class ButtonModel with ChangeNotifier {
  String _dropdownValue = "Apple";

  String _dropdowmFormField = "Apple";
  String get dropdowmFormField => _dropdowmFormField;

  final List<bool> _isSelected = [false, false, false];
  get isSelected => _isSelected;

  setSelectedValue(int i, bool value) {
    _isSelected[i] = value;
    notifyListeners();
  }

  set dropdowmFormField(value) {
    _dropdowmFormField = value;
    notifyListeners();
  }

  String get dropdownValue => _dropdownValue;

  set dropdownValue(String value) {
    _dropdownValue = value;
    notifyListeners();
  }
}
