import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/user.dart';

import '../../services/user-provider.dart';

import '../app&bottomBars/appBar.dart';
import '../app&bottomBars/bottom_navBar.dart';

import '../../services/user-provider.dart';
import '../../utils/app&bottomBars/appBar.dart';
import '../../utils/app&bottomBars/bottom_navBar.dart';

import 'homeLayout/explore-layout.dart';
import '../../utils/buttons/new-game-btn.dart';
import 'homeLayout/ready-games-layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    KUser? user = Provider.of<UserProvider>(context).user;
    if (user == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color(0xFFAECCDE),
        appBar: MyAppBar(
          context: context,
        ),
        bottomNavigationBar: const MyBottomNavBar(),
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
}
