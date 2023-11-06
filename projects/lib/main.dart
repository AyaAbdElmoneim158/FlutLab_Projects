import 'package:flutter/material.dart';
import 'package:projects/Big_apps/smart_shop_app/smart_shop_app.dart';
import 'package:projects/Big_apps/smart_shop_app/utils/helper/shared_preferences.dart';

void main() {
  SharedPref.init();
  runApp(const SmartShopApp());
}
