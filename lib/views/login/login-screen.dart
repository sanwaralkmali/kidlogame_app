// ignore_for_file: file_names, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kidlogame_app/services/user-provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/user.dart';
import '../home_screen.dart';
import 'forget-password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String errorMessage = '';
  late KUser user;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> setUserLoggedIn(username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('isUserLoggedIn', true);
      prefs.setString('username', username);
    });
  }

  Future<void> _loginUser(String email, String password) async {
    var snapshot = await FirebaseFirestore.instance
        .collection('Users')
        .where('email', isEqualTo: email)
        .where('password', isEqualTo: password)
        .get();

    if (snapshot.docs.isEmpty) {
      setState(() {
        errorMessage = 'Invalid email or password';
      });
    }
    Map<String, dynamic>? data = snapshot.docs.first.data();
    setUserLoggedIn(data['username']);
    Provider.of<UserProvider>(context, listen: false).fetchUser();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        shape: Border(top: BorderSide(color: Colors.green, width: 2)),
        closeIconColor: Color.fromARGB(255, 183, 84, 95),
        showCloseIcon: true,
        content: Text(
          'Login successful',
          style: TextStyle(
            color: Color.fromARGB(255, 128, 211, 130),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/graphics/loginScreen1.png'),
                const SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        backgroundBlendMode: BlendMode.multiply,
                        color: const Color.fromARGB(255, 161, 215, 162),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: const Text(
                          'LOGIN',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        backgroundBlendMode: BlendMode.multiply,
                        color: const Color.fromARGB(255, 192, 155, 215),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/SignUpScreen');
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: const Text(
                          'SIGN UP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    constraints: BoxConstraints(
                      maxHeight: 50,
                      maxWidth: 300,
                    ),
                    prefixIcon: Icon(Icons.person),
                    labelText: 'username or Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    constraints: BoxConstraints(
                      maxHeight: 50,
                      maxWidth: 300,
                    ),
                    labelText: 'password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 6),
                if (errorMessage.isNotEmpty)
                  Text(
                    errorMessage,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                    ),
                  ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen(),
                        ),
                      );
                    },
                    child: const Text('Forgot Password?'),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    backgroundBlendMode: BlendMode.multiply,
                    color: const Color.fromARGB(255, 143, 205, 238),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    onPressed: () {
                      if (_usernameController.text.isEmpty ||
                          _passwordController.text.isEmpty) {
                        setState(() {
                          errorMessage = 'Please fill all fields';
                        });
                      } else {
                        setState(() {
                          errorMessage = '';
                          _loginUser(_usernameController.text,
                              _passwordController.text);
                        });
                      }
                    },
                    child: const Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 1.5,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(160, 68, 68, 68),
                        ),
                      ),
                    ),
                    Text(
                      'or',
                      style: TextStyle(
                          color: Color.fromARGB(255, 68, 68, 68),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 150,
                      height: 1.5,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(160, 68, 68, 68),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        backgroundBlendMode: BlendMode.multiply,
                        color: const Color.fromARGB(113, 237, 226, 155),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/images/icons/google.png',
                              width: 24,
                            ),
                            const Text(
                              'GOOGLE',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        backgroundBlendMode: BlendMode.multiply,
                        color: const Color.fromARGB(113, 237, 226, 155),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/images/icons/apple.png',
                              width: 24,
                            ),
                            const Text(
                              'APPLE ID',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/SignUpScreen');
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
