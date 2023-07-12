// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'assets/images/icons/back.png',
            height: 42,
          ),
        ),
        Text(
          'Profile',
          style: TextStyle(
            fontSize: AppTheme.HUGE_TEXT_SIZE,
            color: AppTheme.seconderyTextColor,
            letterSpacing: 1.5,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/icons/settings.png',
            height: 36,
          ),
        ),
      ],
    );
  }
}
