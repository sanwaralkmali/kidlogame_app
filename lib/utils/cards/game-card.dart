// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/utils/buttons/favorite-star-button.dart';
import 'package:kidlogame_app/utils/buttons/like-heart-button.dart';
import 'package:kidlogame_app/utils/buttons/start-game.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Game Name',
            style: TextStyle(
              fontSize: AppTheme.EXTRA_LARGE_TEXT_SIZE,
              color: AppTheme.primaryTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          getCardInfo(
            context,
            gameType: 'Game Type',
            subject: 'Subject',
            grade: 'Grade',
            level: 'Level',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LikeButton(isLiked: isLiked),
              FavoriteButton(isFavorite: false),
            ],
          ),
          const StartGameButton(),
        ],
      ),
    );
  }
}
