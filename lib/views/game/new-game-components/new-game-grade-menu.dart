// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/appTheme/themes.dart';

class GradeMenu extends StatefulWidget {
  const GradeMenu({super.key});

  @override
  State<GradeMenu> createState() => _GameTypeState();
}

class _GameTypeState extends State<GradeMenu> {
  TextStyle textStyle = TextStyle(
    color: AppTheme.primaryTextColor,
    fontSize: AppTheme.LARGE_TEXT_SIZE,
  );

  String selectedOption = 'Select an option';

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> items = [
      DropdownMenuItem(
        value: 'Select an option',
        enabled: false,
        child: Text(
          'Select an option',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 1',
        child: Text(
          'Grade 1',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 2',
        child: Text(
          'Grade 2',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 3',
        child: Text(
          'Grade 3',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 4',
        child: Text(
          'Grade 4',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 5',
        child: Text(
          'Grade 5',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 6',
        child: Text(
          'Grade 6',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 7',
        child: Text(
          'Grade 7',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 8',
        child: Text(
          'Grade 8',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 9',
        child: Text(
          'Grade 9',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 10',
        child: Text(
          'Grade 10',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 11',
        child: Text(
          'Grade 11',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'Grade 12',
        child: Text(
          'Grade 12',
          style: textStyle,
        ),
      ),
      DropdownMenuItem(
        value: 'College',
        child: Text(
          'College',
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
