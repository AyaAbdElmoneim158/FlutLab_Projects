import 'package:flutter/material.dart';
import 'package:projects/Big_apps/smart_shop_app/utils/consts/app_string.dart';
import 'package:projects/Big_apps/smart_shop_app/utils/helper/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  bool darkTheme = false;
  bool get getIsDarkTheme => darkTheme;
  ThemeProvider() {
    getDarkTheme();
  }

  void setDarkTheme(bool val) async {
    SharedPref.save(AppString.themeKey, val);
    darkTheme = val;
    notifyListeners();
  }

  Future<bool> getDarkTheme() async {
    darkTheme = bool.parse(SharedPref.read(AppString.themeKey));
    notifyListeners();
    return darkTheme;
  }
}
