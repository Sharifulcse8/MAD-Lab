import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  List<dynamic> user = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API TEST"), centerTitle: true),
      body: user.isEmpty
          ? Center(child: Text("Prss the button plz"))
          : ListView.builder(
              itemCount: user.length,
              itemBuilder: (context, index) {
                final post = user[index];
                final id = post['id'];
                final userid = post['userId'];
                final reaction = post['reactions'];
                return ListTile(
                  title: Text('Post ID: $id'),
                  subtitle: Row(
                    children: [
                      Text("User ID: $userid"), Text('Reactions: $reaction'),
                    ],
                  ),
                );
              },
            ),

      floatingActionButton: FloatingActionButton(
        onPressed: fetchData,
        child: Icon(Icons.download),
      ),
    );
  }

  void fetchData() async {
    const url = 'https://dummyjson.com/posts?limit=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final jsondecode = jsonDecode(body);
    setState(() {
      user = jsondecode['posts'];
    });
  }
}
