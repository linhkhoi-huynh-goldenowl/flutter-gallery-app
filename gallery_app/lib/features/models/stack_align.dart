import 'package:flutter/material.dart';

class StackAlignModel with ChangeNotifier {
  AlignmentDirectional _alignmentDirectional = AlignmentDirectional.center;
  bool _textDirection = true;
  StackFit _stackFit = StackFit.loose;
  Clip _clip = Clip.hardEdge;
  AlignmentDirectional get alignmentDirectional => _alignmentDirectional;

  set alignmentDirectional(AlignmentDirectional value) {
    _alignmentDirectional = value;
    notifyListeners();
  }

  get textDirection => _textDirection;

  set textDirection(value) {
    _textDirection = value;
    notifyListeners();
  }

  get stackFit => _stackFit;

  set stackFit(value) {
    _stackFit = value;
    notifyListeners();
  }

  get clip => _clip;

  set clip(value) {
    _clip = value;
    notifyListeners();
  }
}
