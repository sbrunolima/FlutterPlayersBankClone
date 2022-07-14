import 'package:flutter/material.dart';

class UserDataWidgets extends StatelessWidget {
  final String _title;
  final _icon;

  UserDataWidgets(this._title, this._icon);

  @override
  Widget build(BuildContext context) {
    Widget divider =
        const Divider(color: Colors.white, height: 1, thickness: 1);

    return Column(
      children: [
        ListTile(
          title: Text(
            _title,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text('******', style: TextStyle(color: Colors.white)),
          trailing: _icon,
        ),
        divider
      ],
    );
  }
}
