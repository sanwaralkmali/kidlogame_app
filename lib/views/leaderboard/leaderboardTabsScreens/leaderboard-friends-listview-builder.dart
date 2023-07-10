// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/constants/themes.dart';
import 'package:kidlogame_app/models/user.dart';
import 'package:kidlogame_app/services/user-provider.dart';
import 'package:kidlogame_app/utils/showDialogs/delete-friend-dialog.dart';
import 'package:provider/provider.dart';

class LeaderBoardFriendsListViewItem extends StatefulWidget {
  final String user;
  final int index;
  const LeaderBoardFriendsListViewItem(
      {super.key, required this.user, required this.index});

  @override
  State<LeaderBoardFriendsListViewItem> createState() =>
      _LeaderBoardFriendsListViewItemState();
}

class _LeaderBoardFriendsListViewItemState
    extends State<LeaderBoardFriendsListViewItem> {
  @override
  Widget build(BuildContext context) {
    KUser? user = Provider.of<UserProvider>(context).user;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppTheme.playerCard,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 2,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        height: 85,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/icons/man.png',
                    width: 52,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Level ${user!.level}',
                    style: TextStyle(
                        fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                        color: AppTheme.seconderyTextColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
              child: Text(
                widget.user,
                style: TextStyle(
                  fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                  color: AppTheme.seconderyTextColor,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/icons/points.png',
                    width: 32,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '${((100 / (widget.index + 1) * 5)).round()}',
                    style: TextStyle(
                      fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                      color: AppTheme.seconderyTextColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.15,
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    showDeleteConfirmDialog(
                        context, "Friend ${widget.index + 1}");
                  },
                  icon: Image.asset(
                    'assets/images/icons/delete-friend.png',
                    width: 32,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
