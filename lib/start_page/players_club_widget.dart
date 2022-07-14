import 'package:flutter/material.dart';

class PlayersClubWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey[850],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Player's Club \nParcerias e benefícios",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Icon(Icons.arrow_forward_ios_rounded, color: Colors.orange[800]),
            ],
          ),
        ),
      ),
    );
  }
}
