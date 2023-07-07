// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ReadyGamesHeader extends StatelessWidget {
  const ReadyGamesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('assets/images/icons/dice.png', height: 32),
            const SizedBox(width: 8),
            const Text(
              'Ready Games',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'See All',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(10, 51, 164, 0.612),
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
