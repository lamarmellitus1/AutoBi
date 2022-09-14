import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const StatusCar = " StatusCAr";

  setCar(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Future<bool> cars = preferences.setBool(StatusCar, true);
  }

  getCar() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool Car() => preferences.getBool(StatusCar) ?? false;
    Car();
  }
}
