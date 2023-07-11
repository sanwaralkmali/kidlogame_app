// ignore_for_file: unnecessary_null_comparison, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/models/user.dart';
import 'package:kidlogame_app/services/navigation-bar-provider.dart';
import 'package:kidlogame_app/services/user-provider.dart';
import 'package:kidlogame_app/views/game/games-screen.dart';
import 'package:kidlogame_app/views/game/new-game-components/new-game-screen.dart';
import 'package:kidlogame_app/views/leaderboard/main-leaderboard-screen.dart';

import 'package:kidlogame_app/views/login/login-screen.dart';
import 'package:kidlogame_app/views/profile/main-profile-screen.dart';
import 'package:kidlogame_app/views/signup/sign_up_screen.dart';
import 'package:kidlogame_app/views/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'views/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final prefs = await SharedPreferences.getInstance();
  final theme = prefs.getString('theme') ?? 'dark';
  AppTheme.setThemeMode(theme);

  // ADD THIS LINE
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(
          create: (context) => NavigationProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<KUser> _getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString('username');

    if (username == null) {
      throw Exception('User not logged in');
    }

    var snapshot = await FirebaseFirestore.instance
        .collection('Users')
        .where('username', isEqualTo: username)
        .get();

    var document = snapshot.docs.first;

    return KUser.fromMap(document.data());
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getUser().then((user) {
        Provider.of<UserProvider>(context, listen: false).user;
      }).catchError((error) {
        if (error.toString() == 'Exception: User not logged in') {}
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KidloGame',
      home: FutureBuilder(
        future: Future.wait([
          Provider.of<UserProvider>(context, listen: false).fetchUser(),
          Future.delayed(const Duration(seconds: 5))
        ]),
        builder: (context, AsyncSnapshot<List> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none) {
            return const SplashScreen();
          } else if (snapshot.hasError) {
            return const LoginScreen();
          } else {
            return const HomeScreen();
          }
        },
      ),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => const HomeScreen(),
        '/SplashScreen': (BuildContext context) => const SplashScreen(),
        '/LoginScreen': (BuildContext context) => const LoginScreen(),
        '/SignUpScreen': (BuildContext context) => const SignUpScreen(),
        '/NewGameScreen': (BuildContext context) => const NewGameScreen(),
        '/GamesScreen': (BuildContext context) => const GamesScreen(),
        '/LeaderboardScreen': (BuildContext context) =>
            const LeaderBoardScreen(),
        '/ProfileScreen': (BuildContext context) => const ProfileScreen(),
      },
    );
  }
}
