import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:projects/Big_apps/smart_shop_app/providers/main_provider.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, mainProvider, child) => NavigationBar(
        selectedIndex: mainProvider.currentPage,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 10,
        onDestinationSelected:(value) =>  mainProvider.onDestinationSelected(value),
        destinations: const [
          NavigationDestination(
            selectedIcon:Icon(IconlyBold.home), 
            icon: Icon(IconlyLight.home),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon:Icon(IconlyBold.search), 
            icon: Icon(IconlyLight.search),
            label: "Search",
          ),
          NavigationDestination(
            selectedIcon:Icon(IconlyBold.bag2), 
            icon: Icon(IconlyLight.bag2),
            label: "Cart",
          ),
          NavigationDestination(
            selectedIcon:Icon(IconlyBold.profile), 
            icon: Icon(IconlyLight.profile),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
