import 'package:flutter/material.dart';

class MainProvider with ChangeNotifier {
  List<Widget> screens = const [
    Center(child: Text("Home_Screen.1")),
    Center(child: Text("Search_Screen.2")),
    Center(child: Text("Cart_Screen.3")),
    Center(child: Text("Profile_Screen.4")),
  ];

  // int currentPage = 0;

  int currentPage;
  MainProvider() : currentPage = defaultX;
  static int get defaultX => 0;

  PageController controller = PageController(initialPage: defaultX);

  void onDestinationSelected(int index) {
    currentPage = index;
    notifyListeners();
    controller.jumpToPage(currentPage);
  }

  void onPageChanged (int index){
    currentPage = index;
    notifyListeners();
  }
}
