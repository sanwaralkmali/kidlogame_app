// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/constants/themes.dart';
import 'package:kidlogame_app/utils/showDialogs/add-new-friend-dialog.dart';
import 'package:kidlogame_app/views/leaderboard/leaderboardTabsScreens/leaderboard-friends-listview-builder.dart';

class LeaderBoardFriends extends StatefulWidget {
  const LeaderBoardFriends({super.key});

  @override
  State<LeaderBoardFriends> createState() => _LeaderBoardFriendsState();
}

class _LeaderBoardFriendsState extends State<LeaderBoardFriends> {
  TextEditingController _controller = TextEditingController();
  List<String> friends = [
    'Friend 1',
    'Friend 2',
    'Friend 3',
    'Friend 4',
    'Friend 5',
    'Friend 6',
    'Friend 7',
    'Friend 8',
    'Friend 9',
    'Friend 10',
    'Friend 11',
    'Friend 12',
    'Friend 13',
    'Friend 14',
    'Friend 15',
    'Friend 16',
    'Friend 17',
    'Friend 18',
    'Friend 19',
    'Friend 20',
    'Friend 21',
    'Friend 22',
    'Friend 23',
    'Friend 24',
    'Friend 25',
    'Friend 26',
    'Friend 27'
  ];
  List<String> filteredFriends = [];

  @override
  void initState() {
    filteredFriends = friends;
    super.initState();
  }

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
                        borderRadius: BorderRadius.circular(36),
                        color: AppTheme.searchBarContainer,
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
                          Expanded(
                            child: TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search ...',
                                hintStyle: TextStyle(
                                  fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                                  color: AppTheme.seconderyTextColor,
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  filteredFriends = friends
                                      .where((friend) => friend
                                          .toLowerCase()
                                          .contains(value.toLowerCase()))
                                      .toList();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showAddFriendDialog(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppTheme.buttonColor,
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
                            Text(
                              'Add New Friend',
                              style: TextStyle(
                                fontSize: AppTheme.DEFAULT_TEXT_SIZE,
                                color: AppTheme.seconderyTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
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
              return LeaderBoardFriendsListViewItem(
                user: filteredFriends[index],
                index: index,
              );
            },
            childCount: filteredFriends.length,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
      ],
    );
  }
}
