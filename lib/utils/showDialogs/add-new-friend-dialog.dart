// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/constants/themes.dart';

void showAddFriendDialog(BuildContext context) {
  bool isUserFound = false;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        shadowColor: Colors.grey.withOpacity(0.5),
        child: Container(
          color: AppTheme.cardColor,
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints(
            maxHeight: 450,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Image.asset(
                    'assets/images/icons/close.png',
                    width: 18,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  'Add New Friend',
                  style: TextStyle(
                    fontSize: AppTheme.EXTRA_LARGE_TEXT_SIZE,
                    fontWeight: FontWeight.w500,
                    color: AppTheme.seconderyTextColor,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 42),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'USER ID:',
                  style: TextStyle(
                    fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.seconderyTextColor,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2),
                decoration: BoxDecoration(
                  color: AppTheme.searchBarContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'search by ID',
                    hintStyle: TextStyle(
                      fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.seconderyTextColor,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              if (isUserFound == false)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    color: AppTheme.playerCard,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/icons/girl.png',
                        width: 42,
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        'Name & last name',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
              const Expanded(
                child: SizedBox(),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE1EA7A),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'Add Friend',
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      );
    },
  );
}
