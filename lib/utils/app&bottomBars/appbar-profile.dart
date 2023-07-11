// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class AppBarProfile extends StatelessWidget {
  final user;
  const AppBarProfile({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/ProfileScreen');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/icons/man.png', height: 42),
            const SizedBox(height: 3.5),
            Text(
              user!.firstName,
              style: TextStyle(
                color: AppTheme.seconderyTextColor,
                fontSize: AppTheme.DEFAULT_TEXT_SIZE,
              ),
            ),
            const SizedBox(height: 1.5),
            Text(
              'Level ${user.level}',
              style: TextStyle(
                color: AppTheme.seconderyTextColor,
                fontSize: AppTheme.DEFAULT_TEXT_SIZE,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
