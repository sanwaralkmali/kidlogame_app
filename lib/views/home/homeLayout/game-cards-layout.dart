// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../homeComponents/game-Card.dart';

class GamesLayout extends StatelessWidget {
  const GamesLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          10,
          (index) {
            return const SizedBox(
              width: 250,
              child: Card(
                elevation: 5,
                color: Color(0xFFEEEEEE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 16, left: 8, right: 8, bottom: 8),
                  child: GameCard(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
