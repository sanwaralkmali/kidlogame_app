import 'package:flutter/material.dart';

import '../models/user.dart';

AppBar MyAppBar({required KUser user, required BuildContext context}) {
  return AppBar(
    toolbarHeight: 100,
    backgroundColor: Colors.white,
    title: Image.asset('assets/images/KidloGameLOGO.png', height: 65),
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
              Image.asset('assets/images/icons/man.png', height: 55),
              Text(
                '${user.firstName} ${user.lastName}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
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
