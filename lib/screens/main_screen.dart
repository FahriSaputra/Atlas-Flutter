import 'package:dicoding_submission/screens/chat/chat_screen.dart';
import 'package:dicoding_submission/screens/profile/profile_screen.dart';
import 'package:dicoding_submission/screens/saved/saved_screen.dart';
import 'package:flutter/material.dart';

import 'package:dicoding_submission/global_colors.dart';
import 'package:dicoding_submission/screens/explore/explore_screen.dart';
import 'package:dicoding_submission/screens/travel/traveling_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final Color inactiveIconColor = GlobalColors().light;
  final Color activeIconColor = GlobalColors().pink;
  int _currentIndex = 0;

  final tabs = [
    Traveling(),
    Explore(),
    Saved(),
    Chat(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "Travel",
              icon: Image.asset(
                "icons/travel.png",
                width: 40,
                height: 40,
                //Basic color icon sudah berwarna
                color: _currentIndex == 0 ? null : inactiveIconColor,
              ),
            ),
            BottomNavigationBarItem(
              label: "Explore",
              icon: Image.asset(
                "icons/explore.png",
                width: 30,
                height: 30,
                color: _currentIndex == 1 ? activeIconColor : inactiveIconColor,
              ),
            ),
            BottomNavigationBarItem(
              label: "Saved",
              icon: Image.asset(
                "icons/saved.png",
                width: 30,
                height: 30,
                color: _currentIndex == 2 ? activeIconColor : inactiveIconColor,
              ),
            ),
            BottomNavigationBarItem(
              label: "Chat",
              icon: Image.asset(
                "icons/chat.png",
                width: 30,
                height: 30,
                color: _currentIndex == 3 ? activeIconColor : inactiveIconColor,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Image.asset(
                "icons/profile.png",
                width: 30,
                height: 30,
                color: _currentIndex == 4 ? activeIconColor : inactiveIconColor,
              ),
            ),
          ],
        ),
        body: tabs[_currentIndex],
      ),
    );
  }
}
