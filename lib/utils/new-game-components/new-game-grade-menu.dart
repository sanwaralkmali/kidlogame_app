// ignore_for_file: file_names

import 'package:flutter/material.dart';

class GradeMenu extends StatefulWidget {
  const GradeMenu({super.key});

  @override
  State<GradeMenu> createState() => _GameTypeState();
}

class _GameTypeState extends State<GradeMenu> {
  List<DropdownMenuItem> items = const [
    DropdownMenuItem(
      value: 'Select an option',
      enabled: false,
      child: Text('Select an option'),
    ),
    DropdownMenuItem(
      value: 'Grade 1',
      child: Text('Grade 1'),
    ),
    DropdownMenuItem(
      value: 'Grade 2',
      child: Text('Grade 2'),
    ),
    DropdownMenuItem(
      value: 'Grade 3',
      child: Text('Grade 3'),
    ),
    DropdownMenuItem(
      value: 'Grade 4',
      child: Text('Grade 4'),
    ),
    DropdownMenuItem(
      value: 'Grade 5',
      child: Text('Grade 5'),
    ),
    DropdownMenuItem(
      value: 'Grade 6',
      child: Text('Grade 6'),
    ),
    DropdownMenuItem(
      value: 'Grade 7',
      child: Text('Grade 7'),
    ),
    DropdownMenuItem(
      value: 'Grade 8',
      child: Text('Grade 8'),
    ),
    DropdownMenuItem(
      value: 'Grade 9',
      child: Text('Grade 9'),
    ),
    DropdownMenuItem(
      value: 'Grade 10',
      child: Text('Grade 10'),
    ),
    DropdownMenuItem(
      value: 'Grade 11',
      child: Text('Grade 11'),
    ),
    DropdownMenuItem(
      value: 'Grade 12',
      child: Text('Grade 12'),
    ),
    DropdownMenuItem(
      value: 'College',
      child: Text('College'),
    ),
    DropdownMenuItem(
      value: 'Other',
      child: Text('Other'),
    ),
  ];

  String selectedOption = 'Select an option';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color.fromARGB(182, 106, 154, 213),
      ),
      width: MediaQuery.of(context).size.width * 0.7,
      child: DropdownButton(
        items: items,
        isExpanded: true, // Ensures the dropdown expands to its parent width
        icon: Image.asset(
          'assets/images/icons/arrow-down-sign-to-navigate.png',
          width: 16,
        ),
        underline: Container(),
        iconSize: 0,
        onChanged: (value) {
          setState(() {
            selectedOption = value.toString();
          });
        },
        value: selectedOption,
      ),
    );
  }
}
