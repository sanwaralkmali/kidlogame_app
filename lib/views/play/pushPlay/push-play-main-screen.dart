// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class PushPlayMainScreen extends StatefulWidget {
  const PushPlayMainScreen({super.key});

  @override
  State<PushPlayMainScreen> createState() => _PushPlayMainScreenState();
}

class _PushPlayMainScreenState extends State<PushPlayMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppTheme.cardColor,
              ),
              height: MediaQuery.of(context).size.height / 3,
              child: Text(
                'Questions will appear here',
                style: TextStyle(
                  color: AppTheme.seconderyTextColor,
                  fontSize: AppTheme.HUGE_TEXT_SIZE,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppTheme.cardColor,
              ),
              height: MediaQuery.of(context).size.height / 3,
              child: Text(
                'Answers will appear here',
                style: TextStyle(
                  color: AppTheme.buttonIconColor,
                  fontSize: AppTheme.HUGE_TEXT_SIZE,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppTheme.playerCard,
              ),
              height: MediaQuery.of(context).size.height / 3,
              child: Text(
                'Buttons will appear here',
                style: TextStyle(
                  color: AppTheme.seconderyTextColor,
                  fontSize: AppTheme.HUGE_TEXT_SIZE,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
