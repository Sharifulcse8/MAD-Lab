import 'package:flutter/material.dart';

class letterBullet extends StatelessWidget {
  final String string;
  const letterBullet(this.string,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Icon(Icons.circle, size: 5, color: Color(0xFF757575)),
            ),
            SizedBox(width: 7),
            Text(
              string,
              style: TextStyle(color: Color(0xFF757575), fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
