// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../headers/explore-subjects-header.dart';
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
      'Physics',
      'Chemistry',
      'Biology',
      'History',
      'Puzzles',
      'Astronomy'
    ];
    List<String> courses2 = [
      'Geography',
      'Social Studies',
      'Foreign Language',
      'Cooking and Baking',
      'General Knowledge',
      'Games and Sports',
      'Art',
      'Music',
      'Other'
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 4, bottom: 4, right: 20),
      child: Column(
        children: <Widget>[
          const ExploreHeader(),
          const SizedBox(height: 8), // Use height instead of width.
          CoursesListView(courses: courses1),
          const SizedBox(height: 8),
          CoursesListView(courses: courses2),
        ],
      ),
    );
  }
}
