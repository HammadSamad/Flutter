import 'package:flutter/material.dart';

class Rowcolumnscreen extends StatelessWidget {
  const Rowcolumnscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 500,
        color: Color.fromARGB(255, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  color: Color.fromARGB(255, 0, 8, 122),
                ),
                Padding(padding: EdgeInsets.all(2)),
                Container(
                  width: 60,
                  height: 60,
                  color: Color.fromARGB(255, 0, 8, 122),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(2)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  color: Color.fromARGB(255, 0, 8, 122),
                ),
                Padding(padding: EdgeInsets.all(2)),
                Container(
                  width: 60,
                  height: 60,
                  color: Color.fromARGB(255, 0, 8, 122),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
