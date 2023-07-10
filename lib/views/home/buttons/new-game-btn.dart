// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/constants/themes.dart';

class NewGameButton extends StatefulWidget {
  const NewGameButton({super.key});

  @override
  State<NewGameButton> createState() => _NewGameButtonState();
}

class _NewGameButtonState extends State<NewGameButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/NewGameScreen');
      },
      child: Container(
        color: AppTheme.buttonColor,
        height: 62,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            'New Game',
            style: TextStyle(
              color: AppTheme.seconderyTextColor,
              fontSize: AppTheme.LARGE_TEXT_SIZE,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
