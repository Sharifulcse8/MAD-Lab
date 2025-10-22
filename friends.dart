import 'package:flutter/material.dart';
import 'package:projects/functionFriends.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  final List<Map<String, String>> friendsList = const [
    {"name": "Aron Peterson", "image": "assets/images/man.png"},
    {"name": "Brothers Together", "image": "assets/images/man2.png"},
    {"name": "Bits Stock", "image": "assets/images/man.png"},
    {"name": "Brod David", "image": "assets/images/man3.png"},
    {"name": "Charles Smith", "image": "assets/images/01.png"},
    {"name": "Chuck Stock", "image": "assets/images/man2.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.only(top: 10),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF65F19),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          leading: Container(
            padding: EdgeInsets.only(left: 9.5),
            child: Image.asset('assets/images/Amulette.png'),
          ),
          title: Text("Friends", style: TextStyle(color: Color(0xFFFFFFFF))),
          centerTitle: true,
          actions: [
            Image.asset('assets/images/pic1.png'),
            SizedBox(width: 20),
            Image.asset('assets/images/pic2.png'),
            SizedBox(width: 10),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              // Top Navigation Cards
              Row(
                children: [
                  FriendProfileCard(
                    parentImagePath: 'assets/images/pic4.png',
                    childImagePath: Image.asset('assets/images/pic3.png'),
                    name: 'My Friends',
                  ),
                  FriendProfileCard(
                    parentImagePath: 'assets/images/pic4.png',
                    childImagePath: Image.asset('assets/images/pic2.png'),
                    name: 'Friend Request',
                  ),
                  FriendProfileCard(
                    parentImagePath: 'assets/images/pic4.png',
                    childImagePath: Icon(Icons.message_outlined, size: 30),
                    name: 'Messages',
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Search Bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Friend",
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Color(0xFFF65F19)),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Friends List
              Expanded(
                child: ListView(
                  children: friendsList.map((friend) {
                    return _buildFriendItem(friend["name"]!, friend["image"]!);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFriendItem(String name, String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset(
                imagePath,
                width: 36,
                height: 36,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 36,
                    height: 36,
                    color: Color(0xFFF65F19),
                    child: Center(
                      child: Text(
                        name[0],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Color(0xFFF65F19),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              "Message",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
