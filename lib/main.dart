import 'package:flutter/material.dart';
import 'package:kidlogame_app/views/login/login-screen.dart';
import 'package:kidlogame_app/views/signup/sign_up_screen.dart';
import 'package:kidlogame_app/views/splash_screen.dart';

import 'views/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KidloGame',
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => const HomeScreen(),
        '/SplashScreen': (BuildContext context) => const SplashScreen(),
        '/LoginScreen': (BuildContext context) => const LoginScreen(),
        '/SignUpScreen': (BuildContext context) => const SignUpScreen(),
      },
    );
  }
}
