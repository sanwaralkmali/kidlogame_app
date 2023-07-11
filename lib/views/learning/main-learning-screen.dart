// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/utils/app&bottomBars/main-appBar.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffoldBackgroundColor,
      appBar: MyAppBar(
        context: context,
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'Not implemented yet',
            style: TextStyle(
              fontSize: AppTheme.LARGE_TEXT_SIZE,
              color: AppTheme.seconderyTextColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
