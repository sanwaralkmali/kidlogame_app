// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';

import 'dateSelector.dart';
import 'favoriteSubject.dart';
import 'ganderSelector.dart';
import 'gradeSelcetor.dart';
import 'interests.dart';

class ContinueScreen extends StatefulWidget {
  const ContinueScreen({Key? key}) : super(key: key);

  @override
  _ContinueScreenState createState() => _ContinueScreenState();
}

class _ContinueScreenState extends State<ContinueScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/graphics/SignUpScreen1.png'),
              const GanderSelector(),
              const SizedBox(height: 24),
              const DateSelector(),
              const SizedBox(height: 8),
              const GradeSelector(),
              const SizedBox(height: 8.0),
              const FavoriteSubject(),
              const SizedBox(height: 8),
              const Interests(),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {},
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
