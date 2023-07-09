// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kidlogame_app/services/user-provider.dart';
import 'package:provider/provider.dart';
import '../home/home_screen.dart';
import 'dateSelector.dart';
import 'favoriteSubject.dart';
import 'ganderSelector.dart';
import 'gradeSelcetor.dart';
import 'interests.dart';
import '../../models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContinueScreen extends StatefulWidget {
  final KUser user;
  const ContinueScreen({Key? key, required this.user}) : super(key: key);

  @override
  _ContinueScreenState createState() => _ContinueScreenState();
}

class _ContinueScreenState extends State<ContinueScreen> {
  Future<void> setUserLoggedIn(username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('isUserLoggedIn', true);
      prefs.setString('username', username);
    });
  }

  Future<void> _addUserToFirestore(KUser user) async {
    await FirebaseFirestore.instance
        .collection('Users')
        .add(user.toMap())
        .then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Sign up successful & Logged in'),
        ),
      );
      setUserLoggedIn(user.username);
      Provider.of<UserProvider>(context, listen: false).fetchUser();

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }).catchError((err) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Sign up failed'),
        ),
      );
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/graphics/SignUpScreen1.png'),
              GanderSelector(user: widget.user),
              const SizedBox(height: 24),
              DateSelector(user: widget.user),
              const SizedBox(height: 8),
              GradeSelector(user: widget.user),
              const SizedBox(height: 8.0),
              FavoriteSubject(user: widget.user),
              const SizedBox(height: 8),
              Interests(user: widget.user),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  _addUserToFirestore(widget.user);
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(126, 197, 249, 1),
                  ),
                  width: 300,
                  height: 48,
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
