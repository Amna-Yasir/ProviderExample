import 'package:flutter/foundation.dart';

class countProvider with ChangeNotifier {
  int _count = 50;
  int get count => _count;

  void setcount() {
    _count++;
    notifyListeners();
  }
}
