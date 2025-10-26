import 'package:flutter/material.dart';

class BU extends StatelessWidget {
  BU({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      alignment: Alignment.topLeft,
      child: IntrinsicWidth(
        child: IntrinsicHeight(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.lightGreenAccent, width: 5),
              //borderRadius: BorderRadius.circular(16),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)
              )
            ),
            child: Text(
              "Md.shariful Islam",
              style: TextStyle(decoration: TextDecoration.none, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
