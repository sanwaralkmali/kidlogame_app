// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/models/user.dart';
import 'package:kidlogame_app/services/user-provider.dart';
import 'package:kidlogame_app/views/profile/profile-background.dart';
import 'package:kidlogame_app/views/profile/profile-games-data.dart';
import 'package:kidlogame_app/views/profile/profile-screen-header.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    KUser? user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      backgroundColor: AppTheme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 24),
                const ProfileHeader(),
                const SizedBox(height: 16),
                const ProfileBackground(),
                const SizedBox(height: 2),
                Center(
                  child: Text(
                    '${user!.firstName} ${user.lastName}'.toUpperCase(),
                    style: TextStyle(
                      color: AppTheme.seconderyTextColor,
                      fontSize: AppTheme.LARGE_TEXT_SIZE,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const ProfileGamesInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
