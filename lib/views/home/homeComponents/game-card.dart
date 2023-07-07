// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../buttons/favorite-star-button.dart';
import '../buttons/like-heart-button.dart';
import '../buttons/start-game.dart';
import 'card-info.dart';

class GameCard extends StatefulWidget {
  const GameCard({super.key});

  @override
  State<GameCard> createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            'Game Name',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          getCardInfo(
            gameType: 'Game Type',
            subject: 'Subject',
            grade: 'Grade',
            level: 'Level',
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LikeButton(isLiked: isLiked),
              FavoriteButton(isFavorite: false),
            ],
          ),
          const SizedBox(height: 16),
          const StartGameButton(),
        ],
      ),
    );
  }
}
