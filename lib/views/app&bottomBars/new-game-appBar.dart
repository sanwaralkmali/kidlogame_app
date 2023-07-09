// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/user.dart';
import '../../services/user-provider.dart';

AppBar NewGameAppBar({required BuildContext context}) {
  KUser? user = Provider.of<UserProvider>(context).user;

  return AppBar(
    toolbarHeight: 100,
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.arrow_back,
        color: Colors.black,
        size: 36,
      ),
    ),
    actions: <Widget>[
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/profile');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/icons/man.png', height: 42),
              const SizedBox(height: 2),
              Text(
                '${user!.firstName} ${user.lastName}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 1),
              Text(
                'Level ${user.level}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
