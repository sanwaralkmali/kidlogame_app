// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class InviteFriendCard extends StatefulWidget {
  final username;
  const InviteFriendCard({super.key, this.username});

  @override
  State<InviteFriendCard> createState() => _InviteFriendCardState();
}

class _InviteFriendCardState extends State<InviteFriendCard> {
  @override
  Widget build(BuildContext context) {
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
              onTap: () {},
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
