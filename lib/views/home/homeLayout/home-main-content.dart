import 'package:flutter/material.dart';
import 'package:kidlogame_app/utils/app&bottomBars/appBar.dart';
import 'package:kidlogame_app/utils/buttons/new-game-btn.dart';
import 'package:kidlogame_app/views/home/homeLayout/explore-layout.dart';
import 'package:kidlogame_app/views/home/homeLayout/ready-games-layout.dart';

class HomeMainContent extends StatelessWidget {
  const HomeMainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFAECCDE),
      appBar: MyAppBar(
        context: context,
      ),
      body: const SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16),
                NewGameButton(),
                SizedBox(height: 8),
                ExploreColumn(),
                SizedBox(height: 8),
                ReadyGamesColumn(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
