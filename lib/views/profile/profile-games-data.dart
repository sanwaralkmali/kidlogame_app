import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/models/user.dart';
import 'package:kidlogame_app/services/user-provider.dart';
import 'package:provider/provider.dart';

class ProfileGamesInfo extends StatelessWidget {
  const ProfileGamesInfo({super.key});

  @override
  Widget build(BuildContext context) {
    KUser? user = Provider.of<UserProvider>(context).user;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Played',
                  style: TextStyle(
                    color: AppTheme.seconderyTextColor,
                    fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 4),
                Image.asset(
                  'assets/images/icons/puzzle3.png',
                  height: 36,
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              user!.totalPoints.toString(),
              style: TextStyle(
                color: AppTheme.seconderyTextColor,
                fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Favorite',
                  style: TextStyle(
                    color: AppTheme.seconderyTextColor,
                    fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 4),
                Image.asset(
                  'assets/images/icons/man.png',
                  height: 36,
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              user.totalPoints.toString(),
              style: TextStyle(
                color: AppTheme.seconderyTextColor,
                fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Points',
                  style: TextStyle(
                    color: AppTheme.seconderyTextColor,
                    fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 4),
                Image.asset(
                  'assets/images/icons/points.png',
                  height: 36,
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              user.totalPoints.toString(),
              style: TextStyle(
                color: AppTheme.seconderyTextColor,
                fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
