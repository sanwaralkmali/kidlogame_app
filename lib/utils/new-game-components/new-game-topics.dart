// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:kidlogame_app/constants/themes.dart';

class NewGameTopicsMenu extends StatefulWidget {
  const NewGameTopicsMenu({super.key});

  @override
  State<NewGameTopicsMenu> createState() => _NewGameTopicsMenuState();
}

class _NewGameTopicsMenuState extends State<NewGameTopicsMenu> {
  String selectedOption = 'Choose a topic';
  TextStyle textStyle = TextStyle(
    color: AppTheme.primaryTextColor,
    fontSize: AppTheme.LARGE_TEXT_SIZE,
  );

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> items = [
      DropdownMenuItem(
        value: 'Choose a topic',
        enabled: false,
        child: Text(
          'Choose a topic',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Algebra',
        child: Text(
          'Algebra',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Geometry',
        child: Text(
          'Geometry',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Trigonometry',
        child: Text(
          'Trigonometry',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Calculus',
        child: Text(
          'Calculus',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Statistics',
        child: Text(
          'Statistics',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Biology',
        child: Text(
          'Biology',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Chemistry',
        child: Text(
          'Chemistry',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Physics',
        child: Text(
          'Physics',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Astronomy',
        child: Text(
          'Astronomy',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Anatomy',
        child: Text(
          'Anatomy',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Physiology',
        child: Text(
          'Physiology',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grammar',
        child: Text(
          'Grammar',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Vocabulary',
        child: Text(
          'Vocabulary',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Reading',
        child: Text(
          'Reading',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Writing',
        child: Text(
          'Writing',
          style: textStyle,
        ),
      ),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppTheme.appBar,
      ),
      width: MediaQuery.of(context).size.width * 0.7,
      child: DropdownButton(
        dropdownColor: AppTheme.appBar,
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
