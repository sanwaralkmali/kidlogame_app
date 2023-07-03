import 'package:flutter/material.dart';

class GanderSelector extends StatefulWidget {
  const GanderSelector({Key? key}) : super(key: key);

  @override
  _GanderSelectorState createState() => _GanderSelectorState();
}

class _GanderSelectorState extends State<GanderSelector> {
  String selectedGander = 'boy';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            backgroundBlendMode: BlendMode.multiply,
            color: const Color.fromARGB(255, 151, 189, 229),
            border: Border.all(
              color: const Color.fromARGB(255, 0, 0, 0),
              width: (selectedGander == 'boy') ? 2 : 0,
            ),
          ),
          child: TextButton(
            onPressed: () {
              setState(() {
                selectedGander = 'boy';
              });
            },
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            child: const Text(
              'Boy',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            backgroundBlendMode: BlendMode.multiply,
            color: const Color.fromARGB(255, 207, 161, 215),
            border: Border.all(
              color: const Color.fromARGB(255, 0, 0, 0),
              width: (selectedGander == 'girl') ? 2 : 0,
            ),
          ),
          child: TextButton(
            onPressed: () {
              setState(() {
                selectedGander = 'girl';
              });
            },
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            child: const Text(
              'Girl',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
