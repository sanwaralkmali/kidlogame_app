import 'package:flutter/material.dart';
import 'package:kidlogame_app/utils/new-game-components/game-type.dart';
import 'package:kidlogame_app/utils/new-game-components/new-game-difficulty.dart';
import 'package:kidlogame_app/utils/new-game-components/new-game-grade-menu.dart';
import 'package:kidlogame_app/utils/new-game-components/new-game-start-btn.dart';
import 'package:kidlogame_app/utils/new-game-components/new-game-subjects.dart';
import 'package:kidlogame_app/utils/new-game-components/new-game-topics.dart';

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
        color: const Color(0xFFEEEEEE),
      ),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Create New Game',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(height: 24),
            GameType(),
            SizedBox(height: 16),
            GradeMenu(),
            SizedBox(height: 16),
            NewGameSubjectsMenu(),
            SizedBox(height: 16),
            NewGameTopicsMenu(),
            SizedBox(height: 16),
            NewGameDifficulty(),
            SizedBox(height: 24),
            NewGameStartButton(),
          ],
        ),
      ),
    );
  }
}
