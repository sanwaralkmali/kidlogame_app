// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/utils/showDialogs/push-play-game-dialog.dart';

class StartGameButton extends StatelessWidget {
  const StartGameButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showGameSelectionDialog(context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppTheme.buttonColor,
        ),
        height: 35,
        width: 120,
        child: Center(
          child: Text(
            'Start Game',
            style: TextStyle(
              color: AppTheme.primaryTextColor,
              fontSize: AppTheme.DEFAULT_TEXT_SIZE,
            ),
          ),
        ),
      ),
    );
  }
}
