import 'package:flutter/material.dart';

class TextFieldModel with ChangeNotifier {
  bool _hintText = false;
  bool _labelText = false;
  bool _helpText = false;
  bool _errorText = false;
  bool _prefix = false;
  bool _suffix = false;
  bool _prefixIcon = false;
  bool _suffixIcon = false;
  bool _isDense = false;
  bool _counterText = false;
  bool _filled = false;
  bool _alignLabelWithHint = false;
  get hintText => _hintText;

  set hintText(value) {
    _hintText = value;
    notifyListeners();
  }

  get labelText => _labelText;

  set labelText(value) {
    _labelText = value;
    notifyListeners();
  }

  get helpText => _helpText;

  set helpText(value) {
    _helpText = value;
    notifyListeners();
  }

  get errorText => _errorText;

  set errorText(value) {
    _errorText = value;
    notifyListeners();
  }

  get prefix => _prefix;

  set prefix(value) {
    _prefix = value;
    notifyListeners();
  }

  get suffix => _suffix;

  set suffix(value) {
    _suffix = value;
    notifyListeners();
  }

  get prefixIcon => _prefixIcon;

  set prefixIcon(value) {
    _prefixIcon = value;
    notifyListeners();
  }

  get suffixIcon => _suffixIcon;

  set suffixIcon(value) {
    _suffixIcon = value;
    notifyListeners();
  }

  get isDense => _isDense;

  set isDense(value) {
    _isDense = value;
    notifyListeners();
  }

  get counterText => _counterText;

  set counterText(value) {
    _counterText = value;
    notifyListeners();
  }

  get filled => _filled;

  set filled(value) {
    _filled = value;
    notifyListeners();
  }

  get alignLabelWithHint => _alignLabelWithHint;

  set alignLabelWithHint(value) {
    _alignLabelWithHint = value;
    notifyListeners();
  }
}
