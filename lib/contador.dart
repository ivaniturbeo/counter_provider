import 'package:flutter/material.dart';

class Contador with ChangeNotifier {
  int _count = 0;
  int _selectedColor = 0;
  int get count => _count;

  Color get color => listcolors[_selectedColor];
  List<Color> listcolors = [
    Colors.black87,
    Colors.red,
    Colors.blue,
    Colors.green
  ];

  void increase() {
    _count++;
    notifyListeners();
  }

  void changec(int color) {
    _selectedColor = color;
    notifyListeners();
  }

  void decrease() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
