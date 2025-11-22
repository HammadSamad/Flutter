import 'package:flutter/material.dart';

class MyTabView extends StatelessWidget {
  const MyTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, 
    child: Scaffold(
      appBar: AppBar(
        title: Text("Messenger"),
        bottom: TabBar(
          tabs: [
            Tab(text: "Home",),
            Tab(text: "Profile",),
            Tab(text: "Settings",),
          ],
          ),
      ),
      body: TabBarView(
        children: [Text("Home"),Text("Profile"),Text("Settings"),] 
      ),
    ));
  }
}