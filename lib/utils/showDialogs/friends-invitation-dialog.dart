// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/utils/cards/invite-friend-card.dart';

void showFriendsInviteDialog(BuildContext context) {
  List<String> friends = [
    'friend1',
    'friend2',
    'friend3',
    'friend4',
    'friend5',
    'friend6',
    'friend7',
    'friend8',
    'friend9',
    'friend10',
  ];
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: AppTheme.subjectChipBackground,
        child: SizedBox(
          height: 400,
          child: Column(
            children: [
              const SizedBox(height: 32),
              SizedBox(
                height: 300,
                child: Scrollbar(
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemCount: friends.length,
                    itemBuilder: (context, index) {
                      return InviteFriendCard(
                        username: friends[index],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
