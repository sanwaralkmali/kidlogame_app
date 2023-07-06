import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/user.dart';
import '../appBar.dart';
import 'bottom_navBar.dart';
import 'homeComponents/explore-layout.dart';

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
    await Future.delayed(const Duration(seconds: 2));

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
            backgroundColor: const Color.fromRGBO(106, 155, 213, 70),
            appBar: MyAppBar(
              context: context,
              user: user,
            ),
            bottomNavigationBar: MyBottomNavBar(
              user: user,
            ),
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Align vertically
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 62,
                        width: 175,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(225, 234, 122, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            'New Game',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const ExploreColumn(),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
