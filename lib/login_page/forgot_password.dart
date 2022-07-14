import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  final String _title;

  ForgotPassword(this._title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          _title,
          style: GoogleFonts.roboto().copyWith(
            fontSize: 16,
            color: Colors.orange[800],
          ),
        ),
      ),
    );
  }
}
