// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/utils/app&bottomBars/bottom_navBar.dart';
import 'package:kidlogame_app/views/game/new-game-card.dart';

import '../../utils/app&bottomBars/new-game-appBar.dart';

class NewGameScreen extends StatefulWidget {
  const NewGameScreen({super.key});

  @override
  _NewGameScreenState createState() => _NewGameScreenState();
}

class _NewGameScreenState extends State<NewGameScreen> {
  List<DropdownMenuItem> items = const [
    DropdownMenuItem(
        value: 'Select an option', child: Text('Select an option')),
    DropdownMenuItem(value: 'Option 1', child: Text('Option 1')),
    DropdownMenuItem(value: 'Option 2', child: Text('Option 2')),
    //add more options here
  ];
  String selectedOption = 'Select an option';
  int difficulty = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFAECCDE),
      appBar: NewGameAppBar(context: context),
      bottomNavigationBar: const MyBottomNavBar(),
      body: const Center(
        child: NewGameCard(),
      ),
    );
  }
}
