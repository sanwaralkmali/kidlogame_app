import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setIndex(int i) {
    _selectedIndex = i;
    notifyListeners(); //notifies consumers about the update
  }
}
