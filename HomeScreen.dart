import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Color.fromARGB(255, 58, 58, 58),
        titleTextStyle: TextStyle(color: Color(0xFF00e215),fontSize: 24),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "This is Home Screen",
              style: TextStyle(color: Color(0xFF0097e6)),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Text("Secondary Text",
          style: TextStyle(fontSize: 24,
          fontWeight: FontWeight.w600,
          backgroundColor: Color(0xff06225e5),
          color: Color(0xFFecf0f1),
          height: 5,
          wordSpacing: 7,
          letterSpacing: 6,
          fontStyle: FontStyle.italic,
          ),)
        ],
      ),
    );
  }
}
