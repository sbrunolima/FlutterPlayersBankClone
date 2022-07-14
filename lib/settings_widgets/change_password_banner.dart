import 'package:flutter/material.dart';

class ChangePasswordBanner extends StatelessWidget {
  final String _text;
  final double _size;
  final _backColor;
  final _icon;
  final _textColor;
  final double _textSize;
  final double _boxSize;

  ChangePasswordBanner(this._text, this._size, this._backColor, this._icon,
      this._textColor, this._textSize, this._boxSize);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: _size,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(8),
            color: _backColor),
        child: Column(
          children: [
            SizedBox(height: _boxSize),
            ListTile(
              leading: _icon,
              title: Text(
                _text,
                style: TextStyle(
                  color: _textColor,
                  fontSize: _textSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
