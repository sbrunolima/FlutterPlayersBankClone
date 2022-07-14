import 'package:flutter/material.dart';

import 'settings_screen.dart';

class DigitalAccountDataScreen extends StatelessWidget {
  static const routeName = '/digital-account-data-screen';

  @override
  Widget build(BuildContext context) {
    Widget divider = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Divider(
        color: Colors.white,
        height: 0,
        thickness: 1.2,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Dados da conta',
          style: TextStyle(color: Colors.orange[800], fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.orange[800]),
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(SettingsScreen.routeName);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                child: Text(
                  'Use os dados abaixo para receber dinheiro na sua conta',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Options(
              'Agência',
              '0000',
              Icon(
                Icons.copy,
                color: Colors.orange[800],
              ),
            ),
            divider,
            Options(
              'Conta',
              '00000000-0',
              Icon(
                Icons.copy,
                color: Colors.orange[800],
              ),
            ),
            divider,
            Options(
              'CPF',
              '000.000.000-00',
              Icon(
                Icons.copy,
                color: Colors.orange[800],
              ),
            ),
            divider,
            Options(
              'Banco',
              'Banco Itaucard S.A',
              null,
            ),
            divider,
            Options(
              'Tipo de conta',
              'Conta corrente',
              null,
            ),
            divider,
          ],
        ),
      ),
    );
  }

  Widget Options(String title, String subtitle, var icon) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      trailing: icon,
    );
  }
}
