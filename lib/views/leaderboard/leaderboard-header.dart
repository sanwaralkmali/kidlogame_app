// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import '../home_screen.dart';

class LeaderBoardHeader extends StatelessWidget {
  const LeaderBoardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Image.asset(
              'assets/images/icons/back.png',
              width: 36,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
          Text(
            'Leaderboard',
            style: TextStyle(
              fontSize: AppTheme.EXTRA_LARGE_TEXT_SIZE,
              color: AppTheme.seconderyTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 36,
            width: 36,
          ),
        ],
      ),
    );
  }
}
