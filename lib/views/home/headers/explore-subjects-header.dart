// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/images/icons/transparency.png',
          height: 36,
        ),
        const SizedBox(width: 12),
        Text(
          'Explore Subjects',
          style: TextStyle(
            fontSize: AppTheme.LARGE_TEXT_SIZE,
            color: AppTheme.seconderyTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
