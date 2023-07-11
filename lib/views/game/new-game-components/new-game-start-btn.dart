// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class NewGameStartButton extends StatelessWidget {
  const NewGameStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppTheme.buttonIconColor,
      ),
      height: 48,
      width: MediaQuery.of(context).size.width * 0.75,
      child: const Center(
        child: Text(
          'Start Game',
          style: TextStyle(
            fontSize: AppTheme.LARGE_TEXT_SIZE,
          ),
        ),
      ),
    );
  }
}
