import 'package:flutter/material.dart';
import 'package:kidlogame_app/utils/app&bottomBars/appBar.dart';
import 'package:kidlogame_app/utils/app&bottomBars/bottom_navBar.dart';
import 'package:kidlogame_app/utils/forms/search-filter-games.dart';
import 'package:kidlogame_app/views/game/games-layout.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFAECCDE),
      appBar: MyAppBar(context: context),
      body: AllGamesLayout(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}