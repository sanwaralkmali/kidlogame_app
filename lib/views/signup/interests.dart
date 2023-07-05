// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:kidlogame_app/models/user.dart';

class Interests extends StatefulWidget {
  KUser user;
  Interests({Key? key, required this.user}) : super(key: key);

  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  List<String> interests = [];
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _printLatestValue() {
    String text = _controller.text;
    if (text.endsWith(' ')) {}
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Interests : ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.25,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Enter your interests',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (_controller.text.isNotEmpty &&
                            !_controller.text.startsWith(' ')) {
                          interests.add(_controller.text);
                          _controller.clear();
                        } else {
                          _controller.clear();
                        }

                        widget.user.interests = interests;
                      });
                    },
                    icon: const Icon(Icons.add),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    if (_controller.text.isNotEmpty) {
                      if (!_controller.text.startsWith(' ') &&
                          value.endsWith(' ')) {
                        interests.add(_controller.text
                            .substring(0, _controller.text.length - 1));
                        _controller.clear();
                      }
                    }
                  });
                },
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 4,
                runSpacing: 4,
                children: [
                  for (var interest in interests)
                    Chip(
                      padding: const EdgeInsets.all(8),
                      label: Text(interest),
                      onDeleted: () {
                        setState(() {
                          interests.remove(interest);
                        });
                      },
                      deleteIcon: const Icon(
                        Icons.close,
                        size: 16,
                        color: Colors.red,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
