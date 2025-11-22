import 'package:flutter/material.dart';

class Expandedandflexible extends StatelessWidget {
  const Expandedandflexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Flexible(
            // fit: FlexFit.tight,
            child:
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          )),
          Expanded(
            child: Container(
            width: 100,
            height: 100,
            color: Colors.lightBlue,
          )),
          Flexible(
            // fit: FlexFit.tight,
            child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          )),
        ],
      )),);
  }
}