import 'package:flutter/material.dart';

import 'subjects-ListView.dart';

class ExploreColumn extends StatelessWidget {
  const ExploreColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> courses1 = [
      'Mathematics',
      'Coding',
      'English',
      'Science',
      'History',
      'Puzzles',
      'Games and Sports',
      'Astronomy',
    ];
    List<String> courses2 = [
      'Geography',
      'Art',
      'Music',
      'Social Studies',
      'Foreign Language',
      'Cooking and Baking',
      'General Knowledge',
      'Other'
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset('assets/images/icons/transparency.png', height: 42),
              const SizedBox(width: 12),
              const Text(
                'Explore',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8), // Use height instead of width.
          CoursesListView(courses: courses1),
          const SizedBox(height: 8),
          CoursesListView(courses: courses2),
        ],
      ),
    );
  }
}
