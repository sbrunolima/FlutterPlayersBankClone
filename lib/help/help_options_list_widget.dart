import 'package:flutter/material.dart';

class HelpOptionsList extends StatelessWidget {
  final String _title;

  HelpOptionsList(this._title);

  @override
  Widget build(BuildContext context) {
    Widget divider = Divider(color: Colors.white, height: 0, thickness: 1);

    return Column(
      children: [
        SizedBox(height: 10),
        ListTile(
          title: Text(
            _title,
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.orange[800],
          ),
        ),
        SizedBox(height: 20),
        divider,
      ],
    );
  }
}
