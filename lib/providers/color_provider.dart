import 'package:flutter/material.dart';

class CoolorProvider extends ChangeNotifier {
  Color _color = Colors.blue;

  Color get color => _color;

  void changeColor() {
    _color = _color == Colors.blue ? Colors.red : Colors.blue;
    notifyListeners();
  }
}
