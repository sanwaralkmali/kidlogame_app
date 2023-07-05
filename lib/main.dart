import 'package:flutter/material.dart';
import 'package:kidlogame_app/views/login/login-screen.dart';
import 'package:kidlogame_app/views/signup/sign_up_screen.dart';
import 'package:kidlogame_app/views/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'views/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KidloGame',
      home: FutureBuilder(
        // Initialize FlutterFire:
        future: _initialization,
        builder: (context, AsyncSnapshot<FirebaseApp> snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            return const Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            ); // replace with your error screen
          }
          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            return const SplashScreen();
          }
          // Otherwise, show something whilst waiting for initialization to complete
          return const CircularProgressIndicator(); // replace with your loading screen
        },
      ),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => const HomeScreen(),
        '/SplashScreen': (BuildContext context) => const SplashScreen(),
        '/LoginScreen': (BuildContext context) => const LoginScreen(),
        '/SignUpScreen': (BuildContext context) => const SignUpScreen(),
      },
    );
  }
}
