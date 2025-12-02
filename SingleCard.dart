import 'package:flutter/material.dart';

class Singlecard extends StatelessWidget {
  const Singlecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 20,
          child: SizedBox(
            height: 300, 
            width: 300,
            child: Column(
              children: [
                Image(image: NetworkImage("https://images.pexels.com/photos/280250/pexels-photo-280250.jpeg?cs=srgb&dl=pexels-pixabay-280250.jpg&fm=jpg")),
                Text("Premium Silver Watch"),
                Text("50000")
              ],
            )),
        ),
      ),
    );
  }
}
