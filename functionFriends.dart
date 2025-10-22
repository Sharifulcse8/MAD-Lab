import 'package:flutter/material.dart';
import 'friends.dart';

class FriendProfileCard extends StatelessWidget {
  final String parentImagePath;
  final Widget childImagePath;
  final String name;
  final double parentImageSize;
  final double childImageSize;
  final double nameFontSize;
  final Color accentColor;

  const FriendProfileCard({
    super.key,
    required this.parentImagePath,
    required this.childImagePath,
    required this.name,
    this.parentImageSize = 80,
    this.childImageSize = 30,
    this.nameFontSize = 10,
    this.accentColor = const Color(0xFFF65F19),
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 5),
        margin: const EdgeInsets.only(left: 150),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Profile Image Stack
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const SizedBox(width: 10),
                    // Parent Image
                    Container(
                      width: parentImageSize,
                      height: parentImageSize,
                      child: Image.asset(parentImagePath, fit: BoxFit.contain),
                    ),
                    // Child Image
                    childImagePath,
                  ],
                ),
              ],
            ),

            // Name Text (Image এর নিচে)
            Container(
              margin: EdgeInsets.only(top: 8, right: 195),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: nameFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            // Accent Line (Text এর নিচে)
            Container(
              padding: const EdgeInsets.only(top: 8),
              margin: EdgeInsets.only(top: 8, right: 190),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 3,
                    decoration: BoxDecoration(
                      color: accentColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
