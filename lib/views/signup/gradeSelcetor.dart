import 'package:flutter/material.dart';

class GradeSelector extends StatefulWidget {
  const GradeSelector({super.key});

  @override
  State<GradeSelector> createState() => _GradeSelectorState();
}

class _GradeSelectorState extends State<GradeSelector> {
  final List<String> _grades = [
    'Grade 1',
    'Grade 2',
    'Grade 3',
    'Grade 4',
    'Grade 5',
    'Grade 6',
    'Grade 7',
    'Grade 8',
    'Grade 9',
    'Grade 10',
    'Grade 11',
    'Grade 12',
    'College',
    'Other'
  ]; // Example list of grades
  String? _selectedGrade;
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
              hint: const Text('Select your grade'),
              isExpanded: true,
              value: _selectedGrade,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedGrade = newValue;
                });
              },
              items: _grades.map<DropdownMenuItem<String>>((String value) {
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
