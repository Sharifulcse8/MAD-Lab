import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';

class Functiontesttask1 extends StatefulWidget {
  final String string;
  final TextInputType keyboardtype;
  final TextEditingController controller;
  final VoidCallback? onDelete;
  const Functiontesttask1({
    super.key,
    required this.string,
    required this.keyboardtype,
    required this.controller,
    this.onDelete,
  });

  @override
  State<Functiontesttask1> createState() => _Functiontesttask1State();
}

class _Functiontesttask1State extends State<Functiontesttask1> {
  @override
  Widget build(BuildContext context) {
    return (TextField(
      keyboardType: widget.keyboardtype,
      decoration: InputDecoration(
        hintText: widget.string,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 20),
            IconButton(onPressed: () {}, icon: Icon(Icons.edit, size: 20)),
            SizedBox(width: 20),
            IconButton(
              onPressed: () {
                widget.onDelete?.call();
              },
              icon: Icon(Icons.delete, size: 20),
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    ));
  }
}
