// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

Widget getCardInfo(BuildContext context, {gameType, subject, grade, level}) {
  return GridView(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 2.8,
      mainAxisSpacing: 24,
      crossAxisSpacing: 16,
    ),
    children: [
      Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppTheme.subjectChipBackground,
        ),
        child: Center(
          child: Text(
            gameType,
            style: TextStyle(
              fontSize: AppTheme.SMALL_TEXT_SIZE,
              color: AppTheme.seconderyTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppTheme.subjectChipBackground,
        ),
        child: Center(
          child: Text(
            subject,
            style: TextStyle(
              fontSize: AppTheme.SMALL_TEXT_SIZE,
              color: AppTheme.seconderyTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppTheme.subjectChipBackground,
        ),
        child: Center(
          child: Text(
            grade,
            style: TextStyle(
              fontSize: AppTheme.SMALL_TEXT_SIZE,
              color: AppTheme.seconderyTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppTheme.subjectChipBackground,
        ),
        child: Center(
          child: Text(
            level,
            style: TextStyle(
              fontSize: AppTheme.SMALL_TEXT_SIZE,
              color: AppTheme.seconderyTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}
