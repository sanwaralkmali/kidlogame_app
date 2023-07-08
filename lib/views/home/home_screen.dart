import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/user.dart';
<<<<<<< Updated upstream
import '../app&bottomBars/appBar.dart';
import '../app&bottomBars/bottom_navBar.dart';
=======
import '../../services/user-provider.dart';
import '../../utils/app&bottomBars/appBar.dart';
import '../../utils/app&bottomBars/bottom_navBar.dart';
>>>>>>> Stashed changes
import 'homeLayout/explore-layout.dart';
import '../../utils/buttons/new-game-btn.dart';
import 'homeLayout/ready-games-layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<KUser> _getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String username = prefs.getString('username')!;

    var snapshot = await FirebaseFirestore.instance
        .collection('Users')
        .where('username', isEqualTo: username)
        .get();

    var document = snapshot.docs.first;
    return KUser.fromMap(document.data());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<KUser>(
      future: _getUser(),
      builder: (BuildContext context, AsyncSnapshot<KUser> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Image.asset('assets/images/KidloGameLOGO.png', height: 65),
              centerTitle: true,
              backgroundColor: Colors.white,
              toolbarHeight: 100,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return Text(
            'Error: ${snapshot.error}',
            style: const TextStyle(fontSize: 15),
          );
        } else {
          KUser user = snapshot.data!;
          return Scaffold(
            backgroundColor: const Color(0xFFAECCDE),
            appBar: MyAppBar(
              context: context,
              user: user,
            ),
            bottomNavigationBar: MyBottomNavBar(
              user: user,
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
      },
    );
  }
}
