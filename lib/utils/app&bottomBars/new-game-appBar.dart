// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/utils/app&bottomBars/appbar-profile.dart';
import 'package:provider/provider.dart';

import '../../models/user.dart';
import '../../services/user-provider.dart';

AppBar NewGameAppBar({required BuildContext context}) {
  KUser? user = Provider.of<UserProvider>(context).user;

  return AppBar(
    backgroundColor: AppTheme.appBar,
    toolbarHeight: 100,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back,
        color: AppTheme.seconderyTextColor,
        size: 42,
      ),
    ),
    actions: <Widget>[
      AppBarProfile(user: user),
    ],
  );
}
