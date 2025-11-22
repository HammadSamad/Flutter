// import 'package:firstapp/Home.dart';
import 'package:firstapp/MyTabView.dart';
import 'package:firstapp/Mytextfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homescreen(),
      // home: Columnscreen(),
      // home: Rowscreen(),
      // home: Rowcolumnscreen(),
      // home: Expandedandflexible(),
      // home: Gridscreen(),
      // home: Mylisttile(),
      // home: Home(),
      // home: MyTextField(),
      home: MyTabView(),
    );
  }
}