// ignore_for_file: must_be_immutable, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/models/user.dart';

class FavoriteSubject extends StatefulWidget {
  KUser user;
  FavoriteSubject({Key? key, required this.user}) : super(key: key);

  @override
  _FavoriteSubjectState createState() => _FavoriteSubjectState();
}

class _FavoriteSubjectState extends State<FavoriteSubject> {
  final List<String> _subjects = [
    'Mathematics',
    'English Language Arts',
    'Science',
    'Computer science',
    'Social Studies',
    'Foreign Languages',
    'Drama/Theater Arts',
    'Health Education',
    'Home Economics',
    'Environmental Studies',
    'Music',
    'Art',
    'Physical Education',
    'Other'
  ]; // Example list of grades
  String? _selectedSubject;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 300,
        height: 64,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(146, 189, 189, 189),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              hint: const Text('Select your favorite subject'),
              isExpanded: true,
              value: _selectedSubject,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedSubject = newValue;
                  widget.user.favSubject = _selectedSubject;
                });
              },
              items: _subjects.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            // Rest of your form
          ],
        ),
      ),
    );
  }
}
