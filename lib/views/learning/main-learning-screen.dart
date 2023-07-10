// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidlogame_app/utils/app&bottomBars/main-appBar.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFAECCDE),
      appBar: MyAppBar(
        context: context,
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Not implemented yet'),
        ),
      ),
    );
  }
}
