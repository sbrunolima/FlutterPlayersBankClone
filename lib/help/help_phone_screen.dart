import 'package:flutter/material.dart';

import '../help/help_screen.dart';

class HelpPhoneScreen extends StatelessWidget {
  static const routeName = '/help-phone-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Telefone',
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
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(
                  'Precisando de ajuda?',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ],
            ),
          ),
          Options('Capitais e regiões metropolitanas', '0000 000 0000'),
          Options('Demais localidades', '0000 000 0000'),
          Options('SAC', '0000 000 0000'),
          Options('Conta Pagamento - Capitais', '0000 000 0000'),
          Options('Conta Pagamento - Demais Localidades', '0000 000 0000'),
        ],
      ),
    );
  }

  Widget Options(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: Colors.orange[800],
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
