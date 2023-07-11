// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/views/game/new-game-components/game-type.dart';
import 'package:kidlogame_app/views/game/new-game-components/new-game-difficulty.dart';
import 'package:kidlogame_app/views/game/new-game-components/new-game-grade-menu.dart';
import 'package:kidlogame_app/views/game/new-game-components/new-game-start-btn.dart';
import 'package:kidlogame_app/views/game/new-game-components/new-game-subjects.dart';
import 'package:kidlogame_app/views/game/new-game-components/new-game-topics.dart';

class NewGameCard extends StatefulWidget {
  const NewGameCard({super.key});

  @override
  State<NewGameCard> createState() => _NewGameCardState();
}

class _NewGameCardState extends State<NewGameCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.7,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppTheme.appBar,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Create New Game',
              style: TextStyle(
                fontSize: AppTheme.EXTRA_LARGE_TEXT_SIZE,
                fontWeight: FontWeight.w400,
                color: AppTheme.primaryTextColor,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 24),
            const GameType(),
            const SizedBox(height: 16),
            const GradeMenu(),
            const SizedBox(height: 16),
            const NewGameSubjectsMenu(),
            const SizedBox(height: 16),
            const NewGameTopicsMenu(),
            const SizedBox(height: 16),
            const NewGameDifficulty(),
            const SizedBox(height: 24),
            const NewGameStartButton(),
          ],
        ),
      ),
    );
  }
}
