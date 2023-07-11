// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class ReadyGamesHeader extends StatelessWidget {
  const ReadyGamesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('assets/images/icons/dice.png', height: 32),
            const SizedBox(width: 12),
            Text(
              'Ready Games',
              style: TextStyle(
                fontSize: AppTheme.LARGE_TEXT_SIZE,
                color: AppTheme.seconderyTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/GamesScreen');
          },
          child: Text(
            'See All',
            style: TextStyle(
              fontSize: AppTheme.DEFAULT_TEXT_SIZE,
              fontWeight: FontWeight.bold,
              color: AppTheme.seconderyTextColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
