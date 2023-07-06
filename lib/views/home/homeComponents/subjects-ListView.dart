import 'package:flutter/material.dart';

class CoursesListView extends StatelessWidget {
  const CoursesListView({Key? key, required this.courses}) : super(key: key);
  final List<String> courses;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // Define a suitable height for your ListView.
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 160,
              ),
              child: Container(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                            'assets/images/subjects/${courses[index]}.png',
                            height: 35),
                        const SizedBox(width: 4),
                        Text(
                          courses[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
