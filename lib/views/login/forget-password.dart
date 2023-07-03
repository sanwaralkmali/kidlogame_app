// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool isNotExsist = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/graphics/forgetPasswordScreen1.png'),
              const SizedBox(height: 20.0),
              const Text(
                'Forgot Password',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'No worries, we’ll send you reset instructions.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 87, 87, 87),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Nunito',
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 4,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Enter your email',
                    hintText: 'your-email@gmail.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
              ),
              (isNotExsist)
                  ? Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 19.0, vertical: 1.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(106, 231, 190, 176),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/icons/info.png',
                              width: 24.0,
                            ),
                            const SizedBox(width: 16.0),
                            const Flexible(
                              child: Text(
                                'We can’t seem to find the right email address for you.resend the email that you have registered ',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),
              const SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 64.0,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 1.0,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(216, 76, 29, 249),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Reset password',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 64.0,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 1.0,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(239, 239, 239, 249),
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(
                      color: const Color.fromARGB(216, 76, 29, 249),
                      width: 1.0,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image(
                            image: AssetImage(
                              'assets/images/icons/back.png',
                            ),
                            width: 24.0,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Back to login',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
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
    );
  }
}
