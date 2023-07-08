// ignore_for_file: file_names

import 'Package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color.fromARGB(255, 13, 71, 20),
      currentIndex: _selectedIndex,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/icons/home2.png', height: 35),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/icons/abc.png', height: 35),
          label: 'Games',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/icons/podium3.png', height: 35),
          label: 'Leaderboard',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/icons/online-learning.png',
              height: 35),
          label: 'Learning',
        ),
      ],
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
    );
  }
}
