import 'package:flutter/material.dart';

class PaymentsBar extends StatelessWidget {
  final String _title;
  final _icon;

  PaymentsBar(this._title, this._icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: 102,
      width: 102,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey[850]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(_icon, color: Colors.orange[800]),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  _title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
