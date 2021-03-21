import 'package:flutter/material.dart';

import 'customer_birthday_setting_data.dart';

class SingleNotifier extends ChangeNotifier {
  String _currentBirthday = listBirthdaySetting[0];

  SingleNotifier();

  String get currentBirthday => _currentBirthday;

  updateBirthday(String value) {
    if (value != _currentBirthday) {
      _currentBirthday = value;
      notifyListeners();
    }
  }
}