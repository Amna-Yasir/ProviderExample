import 'package:flutter/cupertino.dart';

class fontprovider with ChangeNotifier {
  int _val = 15;
  int get val => _val;
  void setValue(int value) {
    _val = value;
    notifyListeners();
  }
}
