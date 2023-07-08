import 'package:flutter/material.dart';

class NewGameStartButton extends StatelessWidget {
  const NewGameStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFE1EA7A),
      ),
      height: 48,
      width: MediaQuery.of(context).size.width * 0.75,
      child: const Center(
        child: Text(
          'Start Game',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
