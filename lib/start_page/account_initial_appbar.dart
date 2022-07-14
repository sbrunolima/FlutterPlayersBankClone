import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountInitialAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            'pb',
            style: TextStyle(
              fontFamily: 'FlightCorpsExpanded',
              fontSize: 60,
              color: Colors.orange[800],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 3),
              Text(
                "PLAYER'S",
                style: TextStyle(
                  fontFamily: 'OmegleRegular-owopB',
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              Text(
                "BANK",
                style: TextStyle(
                  fontFamily: 'OmegleRegular-owopB',
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
