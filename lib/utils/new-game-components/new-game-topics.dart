// ignore_for_file: file_names
import 'package:flutter/material.dart';

class NewGameTopicsMenu extends StatefulWidget {
  const NewGameTopicsMenu({super.key});

  @override
  State<NewGameTopicsMenu> createState() => _NewGameTopicsMenuState();
}

class _NewGameTopicsMenuState extends State<NewGameTopicsMenu> {
  List<DropdownMenuItem> items = const [
    DropdownMenuItem(
      value: 'Choose a topic',
      enabled: false,
      child: Text('Choose a topic'),
    ),
    DropdownMenuItem(
      value: 'Algebra',
      child: Text('Algebra'),
    ),
    DropdownMenuItem(
      value: 'Geometry',
      child: Text('Geometry'),
    ),
    DropdownMenuItem(
      value: 'Trigonometry',
      child: Text('Trigonometry'),
    ),
    DropdownMenuItem(
      value: 'Calculus',
      child: Text('Calculus'),
    ),
    DropdownMenuItem(
      value: 'Statistics',
      child: Text('Statistics'),
    ),
    DropdownMenuItem(
      value: 'Biology',
      child: Text('Biology'),
    ),
    DropdownMenuItem(
      value: 'Chemistry',
      child: Text('Chemistry'),
    ),
    DropdownMenuItem(
      value: 'Physics',
      child: Text('Physics'),
    ),
    DropdownMenuItem(
      value: 'Astronomy',
      child: Text('Astronomy'),
    ),
    DropdownMenuItem(
      value: 'Anatomy',
      child: Text('Anatomy'),
    ),
    DropdownMenuItem(
      value: 'Physiology',
      child: Text('Physiology'),
    ),
    DropdownMenuItem(
      value: 'Grammar',
      child: Text('Grammar'),
    ),
    DropdownMenuItem(
      value: 'Vocabulary',
      child: Text('Vocabulary'),
    ),
    DropdownMenuItem(
      value: 'Reading',
      child: Text('Reading'),
    ),
    DropdownMenuItem(
      value: 'Writing',
      child: Text('Writing'),
    ),
  ];

  String selectedOption = 'Choose a topic';

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
