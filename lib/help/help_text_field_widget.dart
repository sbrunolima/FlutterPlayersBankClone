import 'package:flutter/material.dart';

class HelpTextField extends StatelessWidget {
  final String title;

  //get the user input

  HelpTextField(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.orange.shade800),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.2)),
            hintText: title,
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(Icons.search_outlined, color: Colors.white)),
      ),
    );
  }
}
