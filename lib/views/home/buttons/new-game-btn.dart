// ignore_for_file: file_names

import 'package:flutter/material.dart';

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
        height: 62,
        width: 175,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(225, 234, 122, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'New Game',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
