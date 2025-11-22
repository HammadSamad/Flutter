import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController email = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(padding: EdgeInsetsGeometry.only(top: 10)),
          TextField(
            controller: email,
            keyboardType: TextInputType.emailAddress,
            // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              labelText: "Email",
              hint: Text("Enter your email"),
              filled: true,
              fillColor: Colors.black12,
              // helperText: "Enter Valid Email",
              icon: Icon(Icons.email_outlined),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
            ),
            onChanged: (email) => {
              print("On changed event $email")
            },
          ),
            ElevatedButton(onPressed: ()=> {
              print(email.text)
            }, child: Text("submit")),
        ],
      ),
    );
  }
}