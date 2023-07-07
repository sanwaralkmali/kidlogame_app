// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../headers/ready-games-header.dart';
import 'game-cards-layout.dart';

class ReadyGamesColumn extends StatefulWidget {
  const ReadyGamesColumn({super.key});

  @override
  State<ReadyGamesColumn> createState() => _ReadyGamesColumnState();
}

class _ReadyGamesColumnState extends State<ReadyGamesColumn> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 12, top: 4, bottom: 4, right: 4),
      child: Column(
        children: [
          ReadyGamesHeader(),
          SizedBox(height: 16),
          GamesLayout(),
        ],
      ),
    );
  }
}
