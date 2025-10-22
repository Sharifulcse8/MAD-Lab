import 'package:flutter/material.dart';
import 'function.dart';

class AddAmulette extends StatelessWidget {
  const AddAmulette({super.key});

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
          title: Text(
            "Add Amulette",
            style: TextStyle(color: Color(0xFFFFFFFF)),
          ),
          centerTitle: true,
          actions: [Image.asset('assets/images/man.png'), SizedBox(width: 10)],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center, //child ta ke center e nilam
                    children: [
                      Image.asset(
                        'assets/images/allfame.png',
                        fit: BoxFit.contain,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        margin: EdgeInsets.only(top: 14),
                        child: Image.asset('assets/images/Bluetooth 2.png'),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ADD AMULETTE",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add an Amulette Device now to Display\nimages onto the Amulette",
                      style: TextStyle(color: Color(0xFF757575)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsetsGeometry.only(top: 15)),
              letterBullet("Turn on Bluetooth to your phone"),
              letterBullet("place your Amulette on a charging device"),
              letterBullet("Place your Phone very close the Amulette"),
              Container(
                padding: EdgeInsets.only(top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 8,
                          left: 18,
                          right: 18,
                          bottom: 8,
                        ),
                        margin: EdgeInsets.only(left: 4, right: 4),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Not now",
                          style: TextStyle(
                            color: Color(0xFF757575),
                            fontSize: 10,
                          ),
                        ),
                      ),
                      onPressed: () {
                        print('tap');
                      },
                    ),
                    TextButton(
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 8,
                          left: 30,
                          right: 30,
                          bottom: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF65F19),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 10,
                          ),
                        ),
                      ),
                      onPressed: () {
                        print("TAP");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
