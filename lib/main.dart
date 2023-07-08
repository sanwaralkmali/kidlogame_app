import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kidlogame_app/models/user.dart';
import 'package:kidlogame_app/services/user-provider.dart';
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
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
        // Initialize FlutterFire:
        future: _initialization,
        builder: (context, AsyncSnapshot<FirebaseApp> snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            print(
                '_______________________ ERROR ERROR ERROR ERROR ERROR ERROR __________________________________');

            print(snapshot.error);
            print(
                '________________________ERROR ERROR ERROR ERROR ERROR ERROR _________________________________ ');
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
