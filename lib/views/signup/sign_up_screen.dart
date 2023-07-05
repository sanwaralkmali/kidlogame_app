// ignore_for_file: deprecated_member_use, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:kidlogame_app/models/user.dart';
import 'package:uuid/uuid.dart';

import 'continue-screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passwordVisible = false;
  bool confirmPasswordVisible = false;
  final TextEditingController _currentEmailController = TextEditingController();
  final TextEditingController _currentNameController = TextEditingController();
  final TextEditingController _currentPasswordController =
      TextEditingController();
  bool passwordMessage = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/graphics/SignUpScreen1.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                            .pushReplacementNamed('/LoginScreen');
                      },
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
                      color: const Color.fromARGB(255, 161, 215, 162),
                    ),
                    child: TextButton(
                      onPressed: () {},
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
              const SizedBox(height: 32.0),
              Container(
                width: 300,
                height: 64,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(222, 237, 226, 1),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icons/google.png',
                      width: 32,
                    ),
                    const SizedBox(width: 20.0),
                    const Text(
                      'Sign up with Google',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(51, 93, 239, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                width: 300,
                height: 64,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(222, 237, 226, 1),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icons/apple.png',
                      width: 32,
                    ),
                    const SizedBox(width: 20.0),
                    const Text(
                      'Sign up with Apple ID',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(51, 93, 239, 1),
                      ),
                    ),
                  ],
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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: _currentNameController,
                        decoration: InputDecoration(
                          labelText: 'Name *',
                          hintText: 'Enter your name',

                          labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 26, 24, 24),
                            fontSize: 14,
                          ), // Change this to your preferred color
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(216, 76, 29, 249),
                              // Change this to your preferred color
                            ),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                              color: Colors
                                  .green, // Change this to your preferred color
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a name';
                          } else if (value.length < 3) {
                            return 'Name must be at least 3 characters';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: _currentEmailController,
                        decoration: InputDecoration(
                          labelText: 'Email *',
                          hintText: 'your-email@email.com',

                          labelStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          // Change this to your preferred color
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(216, 76, 29, 249),
                              // Change this to your preferred color
                            ),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                              color: Colors
                                  .green, // Change this to your preferred color
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an email';
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          } else if (!RegExp(
                                  r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$')
                              .hasMatch(value)) {
                            return 'Password must be at least 8 characters, include an uppercase letter, a lowercase letter, and a number';
                          }
                          return null;
                        },
                        enableInteractiveSelection: true,
                        autocorrect: false,
                        enableSuggestions: false,
                        toolbarOptions: const ToolbarOptions(
                          copy: false,
                          paste: false,
                          cut: false,
                          selectAll: false,
                        ),
                        controller: _currentPasswordController,
                        obscureText: !passwordVisible,
                        decoration: InputDecoration(
                          errorText: passwordMessage
                              ? 'Password must be at least 8 characters long'
                              : null,
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 24, 12, 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(216, 76, 29, 249),
                              // Change this to your preferred color
                            ),
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                              color: Colors
                                  .green, // Change this to your preferred color
                            ),
                          ),
                          // filled: true,
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 26, 24, 24),
                            fontSize: 14,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                            child: Container(
                                margin: const EdgeInsets.all(13),
                                child: Icon(
                                    passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: 25)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          KUser user = KUser(
                            id: const Uuid().v1(),
                            username: _currentNameController.text,
                            email: _currentEmailController.text,
                            password: _currentPasswordController.text,
                            gender: 'boy',
                            totalPoints: 0,
                            level: 1,
                          );
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ContinueScreen(user: user),
                            ),
                          );
                        }
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
                          'Sign up',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/LoginScreen');
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
