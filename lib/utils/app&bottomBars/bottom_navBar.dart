// ignore_for_file: file_names

import 'Package:flutter/material.dart';
import 'package:kidlogame_app/services/navigation-bar-provider.dart';
import 'package:kidlogame_app/views/game/games-screen.dart';
import 'package:kidlogame_app/views/home/home_screen.dart';
import 'package:provider/provider.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = Provider.of<NavigationProvider>(context).selectedIndex;

    return BottomNavigationBar(
      selectedItemColor: const Color.fromARGB(255, 13, 71, 20),
      currentIndex: currentIndex,
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
        if (value == currentIndex) {
          return;
        }
        Provider.of<NavigationProvider>(context, listen: false).setIndex(value);
        switch (value) {
          case 0:
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
            break;
          case 1:
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const GamesScreen()));
            break;
          case 2:
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
            break;
          case 3:
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
            break;
        }
      },
    );
  }
}
