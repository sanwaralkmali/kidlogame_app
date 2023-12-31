import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/views/game/games-screen.dart';
import 'package:kidlogame_app/views/home/homeLayout/home-main-content.dart';
import 'package:kidlogame_app/views/leaderboard/main-leaderboard-screen.dart';
import 'package:kidlogame_app/views/learning/main-learning-screen.dart';
import 'package:provider/provider.dart';
import '../models/user.dart';
import '../services/user-provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = const [
    HomeMainContent(),
    GamesScreen(),
    LeaderBoardScreen(),
    LearningScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    KUser? user = Provider.of<UserProvider>(context).user;
    if (user == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
          body: IndexedStack(
            index: _currentIndex,
            children: _children,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: AppTheme
                    .appBar, // sets the background color of the `BottomNavigationBar`
                primaryColor: AppTheme.appBar, // sets the active color
                textTheme: Theme.of(context).textTheme.copyWith(
                      bodySmall: TextStyle(color: AppTheme.seconderyTextColor),
                    ) // sets the inactive color of the `BottomNavigationBar`
                ),
            child: BottomNavigationBar(
              onTap: _onTabTapped,
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon:
                      Image.asset('assets/images/icons/home2.png', height: 35),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icons/abc.png', height: 35),
                  label: 'Games',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icons/podium3.png',
                      height: 35),
                  label: 'Leaderboard',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icons/online-learning.png',
                      height: 35),
                  label: 'Learning',
                ),
              ],
            ),
          ));
    }
  }
}
