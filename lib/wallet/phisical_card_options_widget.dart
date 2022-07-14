import 'package:flutter/material.dart';

class PhisicalCardOptionsWidget extends StatelessWidget {
  final String _title;
  final String _subtitle;
  final _iconLeading;
  final _iconTrailing;
  final double _size;

  PhisicalCardOptionsWidget(this._title, this._subtitle, this._iconLeading,
      this._iconTrailing, this._size);

  @override
  Widget build(BuildContext context) {
    Widget divider = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Divider(
        color: Colors.white,
        thickness: 1,
        height: 0,
      ),
    );
    return Column(
      children: [
        ListTile(
          leading: Icon(_iconLeading, color: Colors.orange[800]),
          title: Text(
            _title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            _subtitle,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: Icon(
            _iconTrailing,
            color: Colors.orange[800],
            size: _size,
          ),
        ),
        divider,
      ],
    );
  }
}
