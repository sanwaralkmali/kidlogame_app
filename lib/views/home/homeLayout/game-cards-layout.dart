// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/utils/cards/game-card.dart';

class GamesLayout extends StatelessWidget {
  const GamesLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          10,
          (index) {
            return SizedBox(
              width: 220,
              child: Card(
                color: AppTheme.cardColor,
                elevation: 5,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(top: 12, left: 8, right: 8, bottom: 8),
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
