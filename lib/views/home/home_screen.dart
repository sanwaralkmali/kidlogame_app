import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Align vertically
            children: <Widget>[
              Text('Welcome to KidloGame', style: TextStyle(fontSize: 18.0)),
            ],
          ),
        ),
      ),
    );
  }
}
