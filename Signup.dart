import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/Home.dart';
import 'package:firstapp/Login.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    // ignore: non_constant_identifier_names
    signupHandler() async {
      try {
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
              email: email.text,
              password: password.text,
            );

        await credential.user!.sendEmailVerification();

        // ScaffoldMessenger.of(context).showSnackBar();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }

    Future<UserCredential> signInWithGoogle() async {
      // Create a new provider
      GoogleAuthProvider googleProvider = GoogleAuthProvider();

      googleProvider.addScope(
        'https://www.googleapis.com/auth/contacts.readonly',
      );
      googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithPopup(googleProvider);

      // Or use signInWithRedirect
      // return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
    }

    //  validateUser() async {
    //       try {
    //         final user = FirebaseAuth.instance.currentUser;

    //         if (user != null) {
    //          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
    //         }
    //       } catch (e) {
    //         print(e);
    //       }
    //     }

    //     validateUser();

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
              SizedBox(height: 20),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  label: Text("Password"),
                  hintText: "Enter your password",
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: signupHandler, child: Text("Signup")),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  signInWithGoogle();
                  print("Google Auth User: ${signInWithGoogle()}");
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                label: Text("Signup"),
                icon: Icon(Icons.g_mobiledata_rounded),
              ),
              SizedBox(height: 20),
              InkWell(
                child: Text("Login"),
                onTap:
                    () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
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
