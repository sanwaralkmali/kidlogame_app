import 'package:flutter/material.dart';

class NewGameSubjectsMenu extends StatefulWidget {
  const NewGameSubjectsMenu({super.key});

  @override
  State<NewGameSubjectsMenu> createState() => _NewGameSubjectsMenuState();
}

class _NewGameSubjectsMenuState extends State<NewGameSubjectsMenu> {
  List<DropdownMenuItem> items = const [
    DropdownMenuItem(
      value: 'Choose a subject',
      enabled: false,
      child: Text('Choose a subject'),
    ),
    DropdownMenuItem(
      value: 'Mathmatics',
      child: Text('Mathmatics'),
    ),
    DropdownMenuItem(
      value: 'Science',
      child: Text('Science'),
    ),
    DropdownMenuItem(
      value: 'English',
      child: Text('English'),
    ),
    DropdownMenuItem(
      value: 'Arabic',
      child: Text('Arabic'),
    ),
    DropdownMenuItem(
      value: 'French',
      child: Text('French'),
    ),
    DropdownMenuItem(
      value: 'History',
      child: Text('History'),
    ),
    DropdownMenuItem(
      value: 'Geography',
      child: Text('Geography'),
    ),
    DropdownMenuItem(
      value: 'Computer',
      child: Text('Computer'),
    ),
    DropdownMenuItem(
      value: 'Art',
      child: Text('Art'),
    ),
    DropdownMenuItem(
      value: 'Music',
      child: Text('Music'),
    ),
    DropdownMenuItem(
      value: 'Sports',
      child: Text('Sports'),
    ),
    DropdownMenuItem(
      value: 'Religion',
      child: Text('Religion'),
    ),
    DropdownMenuItem(
      value: 'Other',
      child: Text('Other'),
    ),
  ];

  String selectedOption = 'Choose a subject';

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
