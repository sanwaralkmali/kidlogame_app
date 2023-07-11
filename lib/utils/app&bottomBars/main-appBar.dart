// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/utils/app&bottomBars/appbar-profile.dart';
import 'package:provider/provider.dart';

import '../../models/user.dart';
import '../../services/user-provider.dart';

AppBar MyAppBar({required BuildContext context}) {
  KUser? user = Provider.of<UserProvider>(context).user;

  return AppBar(
    backgroundColor: AppTheme.appBar,
    toolbarHeight: 100,
    automaticallyImplyLeading: false,
    title: Image.asset('assets/images/KidloGameLOGO.png', width: 96),
    actions: <Widget>[
      AppBarProfile(user: user),
    ],
  );
}
