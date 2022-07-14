import 'package:flutter/material.dart';

import '../help/help_screen.dart';
import '../help/help_options_list_widget.dart';

class HelpCancelScreen extends StatelessWidget {
  static const routeName = '/help-cancel-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Cancelamento',
          style: TextStyle(color: Colors.orange[800], fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.orange[800]),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(HelpScreen.routeName);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HelpOptionsList('Como cancelar o meu cartão definitivamente?'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
