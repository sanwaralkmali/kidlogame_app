import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kidlogame_app/models/user.dart';
import 'package:kidlogame_app/services/user-provider.dart';
import 'package:kidlogame_app/views/game/new-game-screen.dart';

import 'package:kidlogame_app/views/login/login-screen.dart';
import 'package:kidlogame_app/views/signup/sign_up_screen.dart';
import 'package:kidlogame_app/views/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'views/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
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
  final FirebaseApp _app = Firebase.app();

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
  void initState() {
    super.initState();
    _getUser().then((user) {
      Provider.of<UserProvider>(context, listen: false).fetchUser();
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
        ]),
        builder: (context, AsyncSnapshot<List> snapshot) {
          if (snapshot!.connectionState == ConnectionState.done) {
            return const SplashScreen();
          }
          if (snapshot!.hasError) {
            return const Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            );
          }
          return Scaffold(
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
        },
      ),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => const HomeScreen(),
        '/SplashScreen': (BuildContext context) => const SplashScreen(),
        '/LoginScreen': (BuildContext context) => const LoginScreen(),
        '/SignUpScreen': (BuildContext context) => const SignUpScreen(),
        '/NewGameScreen': (BuildContext context) => const NewGameScreen(),
      },
    );
  }
}
