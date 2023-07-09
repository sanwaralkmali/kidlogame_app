// ignore_for_file: file_names
import 'package:flutter/material.dart';

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
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'Difficulty : ',
            style: TextStyle(
              fontSize: 16,
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
                      ? const Color(0xFF84CE7D)
                      : const Color(0xFFF1D9D9),
                ),
                child: const Center(child: Text('Easy')),
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
                      ? const Color(0xFF84CE7D)
                      : const Color(0xFFF1D9D9),
                ),
                child: const Center(child: Text('Medium')),
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
                      ? const Color(0xFF84CE7D)
                      : const Color(0xFFF1D9D9),
                ),
                child: const Center(child: Text('Hard')),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
