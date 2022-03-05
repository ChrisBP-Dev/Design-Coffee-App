import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int value) {
    if (value == _currentIndex) return;

    _currentIndex = value;

    notifyListeners();
  }
}
