import 'package:flutter/material.dart';

class Gridscreen extends StatelessWidget {
  const Gridscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWdith = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
          (
            crossAxisCount: screenWdith <= 800 ? 5 : 10,
            mainAxisExtent: screenHeight <= 700 ? 200 : 100,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: 35,
          itemBuilder: (context, index) {
            return Container(
              // width: 100, 
              // height: 100, 
              color: Colors.blue,
              child: Center(child: Text("Box ${index + 1}")),
              );
          },
        ),
      ),
    );
  }
}
