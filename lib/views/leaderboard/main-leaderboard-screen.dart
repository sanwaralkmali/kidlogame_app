// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/views/leaderboard/leaderboard-header.dart';
import 'package:kidlogame_app/views/leaderboard/leaderboardTabsScreens/leaderboard-friends.dart';
import 'package:kidlogame_app/views/leaderboard/leaderboardTabsScreens/leaderboard-players.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  int selectedIndex = 0;
  List<Widget> selectedWidget = [
    const LeaderBoardPlayers(),
    const LeaderBoardFriends(),
    Text(
      'Not available yet',
      style: TextStyle(
        fontSize: AppTheme.LARGE_TEXT_SIZE,
        color: AppTheme.seconderyTextColor,
        fontWeight: FontWeight.w400,
      ),
    ),
  ];

  bool isSelected(int index) {
    return selectedIndex == index;
  }

  @override
  Widget build(BuildContext context) {
    Widget selectItem = selectedWidget[selectedIndex];

    return Scaffold(
      backgroundColor: AppTheme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const LeaderBoardHeader(),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 75,
                    decoration: BoxDecoration(
                      color: (isSelected(0))
                          ? AppTheme.selectedTap
                          : AppTheme.tapColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/icons/Players.png',
                          height: 32,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Players',
                          style: TextStyle(
                            fontSize: AppTheme.LARGE_TEXT_SIZE,
                            color: AppTheme.seconderyTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 75,
                    decoration: BoxDecoration(
                      color: (isSelected(1))
                          ? AppTheme.selectedTap
                          : AppTheme.tapColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/icons/friends.png',
                          width: 32,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Friends',
                          style: TextStyle(
                              fontSize: AppTheme.LARGE_TEXT_SIZE,
                              color: AppTheme.seconderyTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 75,
                    decoration: BoxDecoration(
                      color: (isSelected(2))
                          ? AppTheme.selectedTap
                          : AppTheme.tapColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/icons/subjects.png',
                          width: 32,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Subjects',
                          style: TextStyle(
                            fontSize: AppTheme.LARGE_TEXT_SIZE,
                            color: AppTheme.seconderyTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Center(child: selectItem),
            ),
          ],
        ),
      ),
    );
  }
}
