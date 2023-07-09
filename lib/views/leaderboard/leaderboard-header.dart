import 'package:flutter/material.dart';
import 'package:kidlogame_app/services/navigation-bar-provider.dart';
import 'package:provider/provider.dart';

import '../home/home_screen.dart';

class LeaderBoardHeader extends StatelessWidget {
  const LeaderBoardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
