// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../constants/textStyles.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacityLogo = 0;
  double _opacityText = 0;

  bool isUserLoggedIn = false;

  Future<void> checkIfUserLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isUserLoggedIn = prefs.getBool('isUserLoggedIn') ?? false;
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      setState(() {
        _opacityLogo = 1;
      });
      checkIfUserLoggedIn();
    });
    Future.delayed(const Duration(seconds: 1)).then((_) {
      setState(() {
        _opacityText = 1;
      });
    });
    Future.delayed(const Duration(seconds: 5)).then((_) {
      setState(() {
        _opacityLogo = 0;
        _opacityText = 0;
      });
    });
    Future.delayed(const Duration(milliseconds: 7500)).then((_) {
      if (isUserLoggedIn) {
        Navigator.of(context).pushReplacementNamed('/HomeScreen');
      } else {
        Navigator.of(context).pushReplacementNamed(
            '/LoginScreen'); // Replace '/home' with the route name of your home screen
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: _opacityLogo,
              child: Image.asset(
                'assets/images/KidloGameLOGO.png',
                width: 200,
              ), // Replace with your logo
            ),
            const SizedBox(height: 50),
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: _opacityText,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '🚀 Get ready for an amazing journey to explore cool challenges and surprises! 🎩',
                  style: splashScreenMessage,
                  textAlign: TextAlign.center, // Align the text as you need
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
