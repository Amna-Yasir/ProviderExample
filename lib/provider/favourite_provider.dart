import 'package:flutter/foundation.dart';

class favoriteitemprovider with ChangeNotifier {
  List<int> _selecteditem = [];
  List get selecteditem => _selecteditem;
  void additem(int value) {
    _selecteditem.add(value);
    notifyListeners();
  }

  void removeitem(int value) {
    _selecteditem.remove(value);
    notifyListeners();
  }
}
