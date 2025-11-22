import 'package:flutter/material.dart';

class Mylisttile extends StatelessWidget {
  const Mylisttile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // spacing: 1,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://media.istockphoto.com/id/1335941248/photo/shot-of-a-handsome-young-man-standing-against-a-grey-background.jpg?s=612x612&w=0&k=20&c=JSBpwVFm8vz23PZ44Rjn728NwmMtBa_DYL7qxrEWr38="),
                // backgroundImage: AssetImage("images/face.jpg"),
              ),
              title: Text("John"),
              subtitle: Text("I am busy right now"),
              trailing: Text("10:00 am"),
              tileColor: Colors.black12,
              shape: BorderDirectional(bottom: BorderSide(color: Colors.black12,width: 1)),
            ),
            ListTile(
              leading: CircleAvatar(
                // backgroundImage: NetworkImage("https://media.istockphoto.com/id/1335941248/photo/shot-of-a-handsome-young-man-standing-against-a-grey-background.jpg?s=612x612&w=0&k=20&c=JSBpwVFm8vz23PZ44Rjn728NwmMtBa_DYL7qxrEWr38="),
                backgroundImage: AssetImage("images/face.jpg"),
              ),
              title: Text("David"),
              subtitle: Text("I am in meeting right now"),
              trailing: Text("10:10 am"),
              tileColor: Colors.black12,
              shape: BorderDirectional(bottom: BorderSide(color: Colors.black12,width: 1)),
            ),
          ],
        ),
        ),
    );
  }
}