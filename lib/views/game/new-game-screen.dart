// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';

import '../app&bottomBars/new-game-appBar.dart';

class NewGameScreen extends StatefulWidget {
  const NewGameScreen({super.key});

  @override
  _NewGameScreenState createState() => _NewGameScreenState();
}

class _NewGameScreenState extends State<NewGameScreen> {
  List<DropdownMenuItem> items = const [
    DropdownMenuItem(
        value: 'Select an option', child: Text('Select an option')),
    DropdownMenuItem(value: 'Option 1', child: Text('Option 1')),
    DropdownMenuItem(value: 'Option 2', child: Text('Option 2')),
    //add more options here
  ];
  String selectedOption = 'Select an option';
  int difficulty = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGameAppBar(context: context),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                const Align(
                  alignment: Alignment.topRight,
                  child: CloseButton(),
                ),
                DropdownButton(
                  items: items,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  value: selectedOption,
                ),
                //Add remaining dropdowns here
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          difficulty = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: difficulty == 0 ? Colors.blue : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Text('Easy'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          difficulty = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: difficulty == 0 ? Colors.blue : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Text('Medium'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          difficulty = 2;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: difficulty == 0 ? Colors.blue : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Text('Hard'),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 162, 234, 151),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Text('Start Game'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
