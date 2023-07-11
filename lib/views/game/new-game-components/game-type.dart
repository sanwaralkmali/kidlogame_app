// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class GameType extends StatefulWidget {
  const GameType({super.key});

  @override
  State<GameType> createState() => _GameTypeState();
}

class _GameTypeState extends State<GameType> {
  TextStyle textStyle = TextStyle(
    color: AppTheme.primaryTextColor,
    fontSize: AppTheme.LARGE_TEXT_SIZE,
  );

  String selectedOption = 'Select an option';

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> items = [
      DropdownMenuItem(
        value: 'Select an option',
        enabled: false,
        child: Text(
          'Select an option',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Flip and Find',
        child: Text(
          'Flip and Find',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Quizzy Whizz',
        child: Text(
          'Quizzy Whizz',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Chatting Cards',
        child: Text(
          'Chatting Cards',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Battle of Brains',
        child: Text(
          'Battle of Brains',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Minute Mastermind',
        child: Text(
          'Minute Mastermind',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Push & Play',
        child: Text(
          'Push & Play',
          style: textStyle,
        ),
      ),
      //add more options here
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppTheme.appBar,
      ),
      width: MediaQuery.of(context).size.width * 0.7,
      child: DropdownButton(
        dropdownColor: AppTheme.appBar,
        items: items,
        isExpanded: true, // Ensures the dropdown expands to its parent width
        icon: Image.asset(
          'assets/images/icons/arrow-down-sign-to-navigate.png',
          width: 16,
        ),
        underline: Container(),
        iconSize: 0,
        onChanged: (value) {
          setState(() {
            selectedOption = value.toString();
          });
        },
        value: selectedOption,
      ),
    );
  }
}
