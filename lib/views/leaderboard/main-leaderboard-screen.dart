import 'package:flutter/material.dart';
import 'package:kidlogame_app/views/leaderboard/leader-board-tabs.dart';
import 'package:kidlogame_app/views/leaderboard/leaderboard-header.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFAECCDE),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LeaderBoardHeader(),
              LeaderBoardTabs(),
            ],
          ),
        ),
      )),
    );
  }
}
