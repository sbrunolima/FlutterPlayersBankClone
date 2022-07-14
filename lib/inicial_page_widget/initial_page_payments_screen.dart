import 'package:flutter/material.dart';

import '../screens/screens_loader.dart';

class InitialPagePaymentsScreen extends StatelessWidget {
  static const routeName = '/initial-page-payments-screen';

  @override
  Widget build(BuildContext context) {
    Widget divider = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Divider(color: Colors.white, height: 0, thickness: 1),
    );

    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Pagamentos',
          style: TextStyle(color: Colors.orange[800], fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.orange[800]),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(ScreensLoader.routeName);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Options(
            'Escanear código de barras',
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.orange[800],
            ),
          ),
          divider,
          Options(
            'Digitar código de barras',
            Icon(
              Icons.edit_outlined,
              color: Colors.orange[800],
            ),
          ),
          divider,
          Options(
            "Pagar fatura Player's Bank",
            Icon(
              Icons.credit_card_outlined,
              color: Colors.orange[800],
            ),
          ),
          divider
        ],
      ),
    );
  }

  Widget Options(String title, Widget icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        trailing:
            Icon(Icons.arrow_forward_ios_outlined, color: Colors.orange[800]),
      ),
    );
  }
}
