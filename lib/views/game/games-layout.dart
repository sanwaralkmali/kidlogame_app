// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:kidlogame_app/utils/forms/search-filter-games.dart';
import 'package:kidlogame_app/utils/homeComponents/game-card.dart';

class AllGamesLayout extends StatefulWidget {
  const AllGamesLayout({super.key});

  @override
  State<AllGamesLayout> createState() => _GamesLayoutState();
}

class _GamesLayoutState extends State<AllGamesLayout> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
          const SliverToBoxAdapter(
            child: MySearchBar(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 24),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const Card(
                  elevation: 16,
                  color: Color(0xFFEEEEEE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 16, left: 8, right: 8, bottom: 8),
                    child: GameCard(),
                  ),
                );
              },
              childCount: 85,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
        ],
      ),
    );
  }
}
