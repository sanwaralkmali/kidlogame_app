// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';
import 'package:kidlogame_app/utils/showDialogs/friends-invitation-dialog.dart';

void showGameSelectionDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: AppTheme.appBar,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 300,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 32),
              Text(
                'Choose your opponent',
                style: TextStyle(
                  fontSize: AppTheme.HUGE_TEXT_SIZE,
                  color: AppTheme.seconderyTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
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
                      'Random player',
                      style: TextStyle(
                        color: AppTheme.scaffoldBackgroundColor,
                        fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
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
                    Navigator.of(context).pop();
                    showFriendsInviteDialog(context);
                  },
                  child: Center(
                    child: Text(
                      'Play with friend',
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
        ),
      );
    },
  );
}
