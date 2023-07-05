// ignore_for_file: must_be_immutable, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/models/user.dart';

class DateSelector extends StatefulWidget {
  KUser user;
  DateSelector({Key? key, required this.user}) : super(key: key);

  @override
  _DateSelectorState createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  DateTime _selectedDate = DateTime.now(); // default value is today's date

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
          _selectedDate, // Initial date. You can use your own date here
      firstDate: DateTime(1900), // This is the earliest allowable date
      lastDate:
          DateTime.now(), // Latest allowable date. Adjust based on your needs
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        widget.user.dateOfBirth = _selectedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(146, 189, 189, 189),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextButton(
              onPressed: () => _selectDate(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Select your birthday',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Image.asset(
                    'assets/images/icons/calendar.png',
                    height: 24,
                  ),
                ],
              ),
            ),

            // Rest of your form
          ],
        ),
      ),
    );
  }
}
