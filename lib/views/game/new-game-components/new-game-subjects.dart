// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class NewGameSubjectsMenu extends StatefulWidget {
  const NewGameSubjectsMenu({super.key});

  @override
  State<NewGameSubjectsMenu> createState() => _NewGameSubjectsMenuState();
}

class _NewGameSubjectsMenuState extends State<NewGameSubjectsMenu> {
  TextStyle textStyle = TextStyle(
    color: AppTheme.primaryTextColor,
    fontSize: AppTheme.LARGE_TEXT_SIZE,
  );

  String selectedOption = 'Choose a subject';

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> items = [
      DropdownMenuItem(
        value: 'Choose a subject',
        enabled: false,
        child: Text(
          'Choose a subject',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Mathmatics',
        child: Text(
          'Mathmatics',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Science',
        child: Text(
          'Science',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'English',
        child: Text(
          'English',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Arabic',
        child: Text(
          'Arabic',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'French',
        child: Text(
          'French',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'History',
        child: Text(
          'History',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Geography',
        child: Text(
          'Geography',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Computer',
        child: Text(
          'Computer',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Art',
        child: Text(
          'Art',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Music',
        child: Text(
          'Music',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Sports',
        child: Text(
          'Sports',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Religion',
        child: Text(
          'Religion',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Other',
        child: Text(
          'Other',
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
