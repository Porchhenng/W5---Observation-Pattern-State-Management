import 'package:flutter/material.dart';

class NavigationNotifier extends ChangeNotifier {

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setIndex(int newIndex) {
    if (newIndex != _currentIndex) {
      _currentIndex = newIndex;
      notifyListeners();
    }
  }
}