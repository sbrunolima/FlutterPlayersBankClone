import 'package:flutter/material.dart';

class LastTransactionsDownWidget extends StatelessWidget {
  final String _text;

  LastTransactionsDownWidget(this._text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        height: 330,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[850]),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Text(
                    'Útimas movimentações',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/bag3.png',
              scale: 1.2,
            ),
            SizedBox(height: 15),
            Text(
              _text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
