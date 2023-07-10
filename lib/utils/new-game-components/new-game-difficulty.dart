// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:kidlogame_app/constants/themes.dart';

class NewGameDifficulty extends StatefulWidget {
  const NewGameDifficulty({super.key});

  @override
  State<NewGameDifficulty> createState() => _NewGameDifficultyState();
}

class _NewGameDifficultyState extends State<NewGameDifficulty> {
  String selectedOption = 'easy';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'Difficulty : ',
            style: TextStyle(
              fontSize: AppTheme.DEFAULT_TEXT_SIZE,
              color: AppTheme.seconderyTextColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => setState(() => selectedOption = 'easy'),
              child: Container(
                width: 75,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: (selectedOption == 'easy')
                      ? AppTheme.selectedTap
                      : AppTheme.tapColor,
                ),
                child: Center(
                    child: Text(
                  'Easy',
                  style: TextStyle(
                    fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                    color: AppTheme.seconderyTextColor,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: () => setState(() => selectedOption = 'medium'),
              child: Container(
                width: 75,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: (selectedOption == 'medium')
                      ? AppTheme.selectedTap
                      : AppTheme.tapColor,
                ),
                child: Center(
                    child: Text(
                  'Medium',
                  style: TextStyle(
                    fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                    color: AppTheme.seconderyTextColor,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: () => setState(() => selectedOption = 'hard'),
              child: Container(
                width: 75,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: (selectedOption == 'hard')
                      ? AppTheme.selectedTap
                      : AppTheme.tapColor,
                ),
                child: Center(
                    child: Text(
                  'Hard',
                  style: TextStyle(
                    fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                    color: AppTheme.seconderyTextColor,
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
