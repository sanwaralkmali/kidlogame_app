// ignore_for_file: file_names
import 'package:flutter/material.dart';
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
          const Text(
            'Leaderboard',
            style: TextStyle(
              fontSize: 24,
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
