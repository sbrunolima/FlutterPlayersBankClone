import 'package:flutter/material.dart';

import '../settings_screen/settings_pix_space_screen.dart';
import '../login_page/user_input_text_field.dart';
import '../pix/pix_qrcode_text_widget.dart';

class PixCopyPasteScreen extends StatelessWidget {
  static const routeName = '/pix-coy-paste-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Digitar código',
          style: TextStyle(color: Colors.orange[800], fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.orange[800]),
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(SettingsPixSpaceScreen.routeName);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Digite o código do QR Code',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          QRCodeTextField(''),
          Container(height: 520),
          RaisedButton(
            onPressed: () {},
            child: Text(
              'Confirmar',
              style: TextStyle(fontSize: 16),
            ),
            padding: EdgeInsets.symmetric(horizontal: 130, vertical: 16),
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        ],
      ),
    );
  }
}
