// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/core/consts.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/screens/favorite/favorite_screen.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/screens/home/home_screen.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/screens/post/post_screen.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/screens/profile/profile_screen.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/screens/search/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    late PageController pageController = PageController();

    // ignore: unused_element
    @override
    void initState() {
      pageController = PageController();
      super.initState();
    }

    @override
    void dispose() {
      pageController.dispose();
      super.dispose();
    }

    void navigationTapped(int index) {
      pageController.jumpToPage(index);
    }

    void onPageChanged(int index) {
      setState(() {
        _currentIndex = index;
        print('$_currentIndex');
      });
    }

    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      bottomNavigationBar: BottomNavigationBar(
          // fixedColor: AppColors.backGroundColor,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.darkGreyColor,
          backgroundColor: AppColors.backGroundColor,
          type: BottomNavigationBarType.fixed,
          // currentIndex: currentIndex,
          onTap: onPageChanged,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_circle),
              label: '',
            ),
          ]),
      body: PageView(
        controller: pageController,
        onPageChanged: navigationTapped,
        children: const [
          HomeScreen(),
          SearchScreen(),
          PostScreen(),
          FavoriteScreen(),
          ProfileScreen()
        ],
      ),
    );
  }
}
