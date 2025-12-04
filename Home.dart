import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/Login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    validateUser() async {
      try {
        final user = FirebaseAuth.instance.currentUser;
        if (user == null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        }
      } catch (e) {
        print(e);
      }
    }
    validateUser();

    Map<IconData, String> drawerItems = {
      FontAwesomeIcons.house: "Home",
      FontAwesomeIcons.user: "Profile",
      FontAwesomeIcons.circleCheck: "Activity",
      FontAwesomeIcons.gear: "Settings",
      FontAwesomeIcons.circleQuestion: "About",
    };

    return Scaffold(
      body: Center(child: Text("Home")),
      // body: AppBar(),
      // drawer: Drawer(
      //   child: ListView.builder(
      //     itemCount: drawerItems.length,
      //     itemBuilder: (context, index) {
      //       var drawerIcons = drawerItems.keys;
      //       var drawerText = drawerItems.values;
      //       return Column(
      //         children: [
      //           ListTile(
      //             leading: FaIcon(drawerIcons.elementAt(index)),
      //             title: Text(drawerText.elementAt(index)),
      //           ),
      //         ],
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
