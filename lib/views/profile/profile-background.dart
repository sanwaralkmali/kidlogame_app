import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class ProfileBackground extends StatefulWidget {
  const ProfileBackground({super.key});

  @override
  State<ProfileBackground> createState() => _ProfileBackgroundState();
}

class _ProfileBackgroundState extends State<ProfileBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/graphics/loginScreen1.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: -0,
            left: MediaQuery.of(context).size.width / 2 - 50,
            right: MediaQuery.of(context).size.width / 2 - 50,
            height: 100,
            child: ClipOval(
              child: Image.asset(
                'assets/images/icons/man.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
