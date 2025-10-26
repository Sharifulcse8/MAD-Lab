import 'dart:async';
import 'package:flutter/material.dart';
import 'task1.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Functiontask1 extends StatefulWidget {
  final String string;
  final TextInputType keyboardtype;
  final TextEditingController controller;
  final VoidCallback? onDelete; //voidcall not return anyting and only call if ondelte is not null
  const Functiontask1({
    super.key,
    required this.string,
    required this.keyboardtype,
    required this.controller,
    this.onDelete,
  });

  @override
  State<Functiontask1> createState() => _Functiontaks1State();
}

class _Functiontaks1State extends State<Functiontask1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TextField(
            controller: widget.controller,
            keyboardType: widget.keyboardtype,
            decoration: InputDecoration(
              hintText: widget.string,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.edit, size: 20),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    child: const Icon(Icons.delete, size: 20),
                    onPressed:widget.onDelete,//null safe
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
