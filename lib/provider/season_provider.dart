import 'package:flutter/material.dart';

class SeasonProvider extends ChangeNotifier {
  String? _selectedSeason;

  String? get season => _selectedSeason;

  void selectSeason(String value) {
    _selectedSeason = value;
    notifyListeners();
  }
}
