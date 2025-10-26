import 'package:flutter/material.dart';
import 'package:projects/task2.dart';
import 'package:projects/testtask1.dart';
import 'task1.dart';

void main() {
  runApp(const BUCSE());
}

class BUCSE extends StatelessWidget {
  const BUCSE({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TestTask1());
  }
}

