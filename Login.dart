import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/Home.dart';
import 'package:firstapp/Signup.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    // ignore: non_constant_identifier_names
    loginHandler() async {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
              email: email.text,
              password: password.text,
            );

        if (credential.user!.emailVerified) {
          Navigator.pushReplacement(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: email,
                decoration: InputDecoration(
                  label: Text("Email"),
                  hintText: "Enter your email",
                ),
              ),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  label: Text("Password"),
                  hintText: "Enter your password",
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: loginHandler, child: Text("Login")),
              SizedBox(height: 20),
              InkWell(
                child: Text("Signup"),
                onTap:
                    () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      ),
                    },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
