import 'package:flutter/material.dart';

class QRCodeTextField extends StatelessWidget {
  final String title;

  //get the user input

  QRCodeTextField(this.title);

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
        ),
      ),
    );
  }
}
