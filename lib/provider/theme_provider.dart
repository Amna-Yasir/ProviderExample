import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class themeprovider with ChangeNotifier {
  var _thememode = ThemeMode.light;
  ThemeMode get thememode => _thememode;
  void setTheme(ThemeMode) {
    _thememode = ThemeMode;
    notifyListeners();
  }
}
