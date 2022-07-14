import 'package:flutter/material.dart';

class HelpQuestionsWidget extends StatelessWidget {
  final String _title;

  HelpQuestionsWidget(this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1.3),
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[850],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.question_mark_outlined,
                  color: Colors.orange[800],
                ),
              ],
            ),
          ),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              _title,
              style: TextStyle(
                color: Colors.orange[800],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
