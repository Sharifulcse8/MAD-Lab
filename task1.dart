import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'functiontask1.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  final nameController = TextEditingController();
  final rollController = TextEditingController();
  final regController = TextEditingController();
  final deptController = TextEditingController();
  final deptbatchController = TextEditingController();
  final dobController = TextEditingController();
  final homeController = TextEditingController();
  final distController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final genderController = TextEditingController();

  @override
  void initState() { // it is run once when widget make
    super.initState();
    _loadAllData();
  }

  Future<void> _saveAllData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('Your Name', nameController.text);
    await prefs.setString('Class Roll', rollController.text);
    await prefs.setString('Registration', regController.text);
    await prefs.setString('Department', deptController.text);
    await prefs.setString('Dept Batch', deptbatchController.text);
    await prefs.setString('dob', dobController.text);
    await prefs.setString('Home', homeController.text);
    await prefs.setString('District', distController.text);
    await prefs.setString('Phone Number', phoneController.text);
    await prefs.setString('Email', emailController.text);
    await prefs.setString('Gender', genderController.text);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('All Data Saved Successfully.')),
    );
  }

  Future<void> _loadAllData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      nameController.text = prefs.getString('Your Name') ?? '';
      rollController.text = prefs.getString('Class Roll') ?? '';
      regController.text = prefs.getString('Registration') ?? '';
      deptController.text = prefs.getString('Department') ?? '';
      deptbatchController.text = prefs.getString('Dept Batch') ?? '';
      dobController.text = prefs.getString('dob') ?? '';
      homeController.text = prefs.getString('Home') ?? '';
      distController.text = prefs.getString('District') ?? '';
      phoneController.text = prefs.getString('Phone Number') ?? '';
      emailController.text = prefs.getString('Email') ?? '';
      genderController.text = prefs.getString('Gender') ?? '';
    });
  }

  Future<void> _deleteField(
    String key,
    TextEditingController controller,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
    setState(() {
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Info",
          style: TextStyle(
            decoration: TextDecoration.underline,
            decorationThickness: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image(image: AssetImage("assets/images/sharif.png")),
              ),
              SizedBox(height: 8),
              Functiontask1(
                string: 'Your Name',
                keyboardtype: TextInputType.text,
                controller: nameController,
                onDelete: () => _deleteField('Your Name', nameController),
              ),
              SizedBox(height: 3),
              Functiontask1(
                string: 'Class Roll',
                keyboardtype: TextInputType.text,
                controller: rollController,
                onDelete: () => _deleteField('Class Roll', rollController),
              ),
              SizedBox(height: 3),
              Functiontask1(
                string: 'Registration',
                keyboardtype: TextInputType.text,
                controller: regController,
                onDelete: () => _deleteField('Registration', regController),
              ),
              SizedBox(height: 3),
              Functiontask1(
                string: 'Department',
                keyboardtype: TextInputType.text,
                controller: deptController,
                onDelete: () => _deleteField('Department', deptController),
              ),
              SizedBox(height: 3),
              Functiontask1(
                string: 'Dept Batch',
                keyboardtype: TextInputType.text,
                controller: deptbatchController,
                onDelete: () => _deleteField('Dept Batch', deptbatchController),
              ),
              SizedBox(height: 3),
              Functiontask1(
                string: 'Date of Birth',
                keyboardtype: TextInputType.datetime,
                controller: dobController,
                onDelete: () => _deleteField('dob', dobController),
              ),
              SizedBox(height: 3),
              Functiontask1(
                string: 'Home',
                keyboardtype: TextInputType.text,
                controller: homeController,
                onDelete: () => _deleteField('Home', homeController),
              ),

              SizedBox(height: 3),
              Functiontask1(
                string: 'District',
                keyboardtype: TextInputType.text,
                controller: distController,
                onDelete: () => _deleteField('District', distController),
              ),
              SizedBox(height: 3),
              Functiontask1(
                string: 'Phone Number',
                keyboardtype: TextInputType.number,
                controller: phoneController,
                onDelete: () => _deleteField('Phone Number', phoneController),
              ),
              SizedBox(height: 3),
              Functiontask1(
                string: 'Email',
                keyboardtype: TextInputType.emailAddress,
                controller: emailController,
                onDelete: () => _deleteField('Email', emailController),
              ),
              SizedBox(height: 3),
              Functiontask1(
                string: 'Gender',
                keyboardtype: TextInputType.number,
                controller: genderController,
                onDelete: () => _deleteField('Gender', genderController),
              ),
              SizedBox(height: 3),
              ElevatedButton(
                onPressed: () {
                  _saveAllData();
                },
                child: Text("Save", style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
