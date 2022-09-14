import 'package:flutter/cupertino.dart';
import 'package:pub/state_managemnent/ui_manager/sharedPref.dart';

class sharedProvider extends ChangeNotifier {
  SharedPref sharedPref = SharedPref();
  bool IsDisplay = false;
  bool get getDisplay => IsDisplay;
  set setDisplay(bool value) {
    IsDisplay = value;
    sharedPref.setCar(value);
    notifyListeners();
  }
}
