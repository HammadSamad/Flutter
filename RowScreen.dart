import 'package:flutter/material.dart';

class Rowscreen extends StatelessWidget {
  const Rowscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container
          (
          width: 50,
          height: 50,
          color: Color.fromARGB(255, 255, 145, 0)
          ),
          Container
          (
          width: 50, 
          height: 50, 
          color: Color.fromARGB(255, 255, 0, 0)),
          Container
          (
          width: 50, 
          height: 50, 
          color: Color.fromARGB(255, 0, 81, 255)),
          Container
          (
          width: 50, 
          height: 50, 
          color: Color.fromARGB(255, 0, 255, 213)),
        ],
      ),
    );
  }
}
