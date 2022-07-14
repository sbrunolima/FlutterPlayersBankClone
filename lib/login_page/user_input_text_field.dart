import 'package:flutter/material.dart';

class UserInputTextField extends StatelessWidget {
  final String title;

  //get the user input

  UserInputTextField(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.orange.shade800),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange.shade800)),
          hintText: title,
          hintStyle: TextStyle(color: Colors.white),
          suffixIcon:
              Icon(Icons.remove_red_eye_outlined, color: Colors.orange[800]),
        ),
      ),
    );
  }
}
