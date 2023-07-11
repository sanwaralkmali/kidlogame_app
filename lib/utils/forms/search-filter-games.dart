// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppTheme.searchBarContainer,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/icons/filter.png',
              width: 24,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search . . .",
                hintStyle: TextStyle(
                  color: AppTheme.seconderyTextColor,
                  fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 1.5,
            height: 32,
            color: AppTheme.seconderyTextColor,
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/icons/search-interface-symbol.png',
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
