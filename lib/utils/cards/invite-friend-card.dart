// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/gameFunctions/send-invitation.dart';
import 'package:kidlogame_app/models/user.dart';
import 'package:kidlogame_app/services/get-user.dart';
import 'package:kidlogame_app/services/user-provider.dart';
import 'package:provider/provider.dart';

class InviteFriendCard extends StatefulWidget {
  final username;
  const InviteFriendCard({super.key, this.username});

  @override
  State<InviteFriendCard> createState() => _InviteFriendCardState();
}

class _InviteFriendCardState extends State<InviteFriendCard> {
  KUser? friend;

  void setFriend() async {
    await fetchUser("Salah2_652").then((value) {
      friend = value!;
    });
  }

  @override
  void initState() {
    setFriend();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    KUser? user = Provider.of<UserProvider>(context).user;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppTheme.playerCard,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/icons/girl.png',
                  height: 42,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                widget.username,
                style: TextStyle(
                  color: AppTheme.seconderyTextColor,
                  fontSize: AppTheme.LARGE_TEXT_SIZE,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Container(
            width: 120,
            height: 60,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppTheme.buttonIconColor,
            ),
            child: GestureDetector(
              onTap: () {
                setFriend();
                print('${user!.username} invited ${friend!.fcmToken}');
                inviteFriend(user!.username, friend!.fcmToken);
              },
              child: Center(
                child: Text(
                  'Invite',
                  style: TextStyle(
                    color: AppTheme.scaffoldBackgroundColor,
                    fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
