// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/views/leaderboard/leaderboardTabsScreens/leaderboard-friends-listview-builder.dart';

class LeaderBoardFriends extends StatefulWidget {
  const LeaderBoardFriends({super.key});

  @override
  State<LeaderBoardFriends> createState() => _LeaderBoardFriendsState();
}

class _LeaderBoardFriendsState extends State<LeaderBoardFriends> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(36),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 2,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 16),
                          Image.asset(
                            'assets/images/icons/search-interface-symbol.png',
                            width: 18,
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 2,
                            height: 24,
                            color: const Color.fromARGB(255, 39, 39, 39)
                                .withOpacity(0.5),
                          ),
                          const SizedBox(width: 8),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search ...',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(170, 225, 234, 122),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 2,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icons/addNewFriend.png',
                            height: 36,
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            'Add New Friend',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 2),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return const LeaderBoardListViewItem();
            },
            childCount: 18,
          ),
        ),
      ],
    );
  }
}
