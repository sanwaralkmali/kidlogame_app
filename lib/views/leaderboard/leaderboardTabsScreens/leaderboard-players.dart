// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/models/user.dart';
import 'package:kidlogame_app/services/user-provider.dart';
import 'package:provider/provider.dart';

class LeaderBoardPlayers extends StatefulWidget {
  const LeaderBoardPlayers({super.key});

  @override
  State<LeaderBoardPlayers> createState() => _LeaderBoardPlayersState();
}

class _LeaderBoardPlayersState extends State<LeaderBoardPlayers> {
  @override
  Widget build(BuildContext context) {
    KUser? user = Provider.of<UserProvider>(context).user;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemCount: 10,
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 249, 249),
              borderRadius: BorderRadius.circular(8),
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
                      Text('Level ${user!.level}'),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Text(
                    'Player ${index + 1}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
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
                        '${(1000 * 3 + 75 / (index + 1)).round()}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
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
                        SnackBar snackBar = SnackBar(
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  'Friend request sent to Player ${index + 1}'),
                              const Icon(
                                Icons.check_circle_outline,
                                color: Color.fromARGB(255, 111, 203, 114),
                              ),
                            ],
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      icon: Image.asset(
                        'assets/images/icons/addFriend.png',
                        width: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
