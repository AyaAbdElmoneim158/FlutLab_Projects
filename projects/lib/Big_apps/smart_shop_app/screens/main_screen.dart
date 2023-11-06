import 'package:flutter/material.dart';
import 'package:projects/Big_apps/smart_shop_app/widgets/custom_app_bar.dart';
import 'package:projects/Big_apps/smart_shop_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:projects/Big_apps/smart_shop_app/widgets/custom_page_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: const CustomAppBar(),
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: const CustomPageView());
  }
}
