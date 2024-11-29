import 'package:flutter/material.dart';

class CornerRadiusProvider extends ChangeNotifier {
  double topLeft = 0.0;
  double topRight = 0.0;
  double bottomLeft = 0.0;
  double bottomRight = 0.0;

  void updateTopLeft(double value) {
    topLeft = value;
    notifyListeners();
  }

  void updateTopRight(double value) {
    topRight = value;
    notifyListeners();
  }

  void updateBottomLeft(double value) {
    bottomLeft = value;
    notifyListeners();
  }

  void updateBottomRight(double value) {
    bottomRight = value;
    notifyListeners();
  }
}
