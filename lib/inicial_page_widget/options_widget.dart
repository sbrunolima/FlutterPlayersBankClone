import 'package:flutter/material.dart';

class OptionsWidget extends StatelessWidget {
  final String title;
  Color color;
  final bool isBold;
  final String valor;

  OptionsWidget(this.title, this.valor, this.color, this.isBold);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: color,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              Text(
                valor,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Divider(color: Colors.white, thickness: 1),
        ],
      ),
    );
  }
}
