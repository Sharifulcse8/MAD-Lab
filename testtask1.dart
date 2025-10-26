import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'functiontesttask1.dart';

class TestTask1 extends StatefulWidget {
  const TestTask1({super.key});

  @override
  State<TestTask1> createState() => _TestTask1State();
}

class _TestTask1State extends State<TestTask1> {
  final namecontroller = TextEditingController();
  final rollcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', namecontroller.text);
    await prefs.setString('roll', rollcontroller.text);

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Data saved successfully.")));
  }

  Future<void> loadData() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString('name') ?? '';
    final roll = prefs.getString('roll') ?? '';
    setState(() {
      namecontroller.text = name;
      rollcontroller.text = roll;
    });
  }

  Future<void> ondelete(String key, TextEditingController controller) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
    setState(() {
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Personal Info"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/sharif.png'),
              ),
            ),
            Functiontesttask1(
              keyboardtype: TextInputType.text,
              string: 'name',
              controller: namecontroller,
              onDelete: () => ondelete('name', namecontroller),
            ),
            SizedBox(height: 50),
            Functiontesttask1(
              string: 'roll',
              keyboardtype: TextInputType.text,
              controller: rollcontroller,
              onDelete: () => ondelete('roll', rollcontroller),
            ),
            ElevatedButton(onPressed: saveData, child: Text("Save")),
          ],
        ),
      ),
    );
  }
}
