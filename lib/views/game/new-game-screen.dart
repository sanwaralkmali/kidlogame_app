// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/utils/app&bottomBars/bottom_navBar.dart';
import 'package:kidlogame_app/utils/app&bottomBars/new-game-appBar.dart';

import 'package:kidlogame_app/views/game/new-game-card.dart';

class NewGameScreen extends StatefulWidget {
  const NewGameScreen({super.key});

  @override
  _NewGameScreenState createState() => _NewGameScreenState();
}

class _NewGameScreenState extends State<NewGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFAECCDE),
      appBar: NewGameAppBar(context: context),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          padding: const EdgeInsets.all(16),
          child: const NewGameCard(),
        ),
      ),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
