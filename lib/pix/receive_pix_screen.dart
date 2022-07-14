import 'package:flutter/material.dart';

import '../settings_screen/settings_pix_space_screen.dart';

class ReceivePixScreen extends StatelessWidget {
  static const routeName = '/receive-pix-screem';

  @override
  Widget build(BuildContext context) {
    Widget divider = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Divider(
        color: Colors.white,
        height: 0,
        thickness: 1,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Cadastrar chave Pix',
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
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Cadastre a sua chave Pix',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                child: Text(
                  'Player, escolha uma opçao abaixo para criar sua chave:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Chaves disponíveis',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Options('CPF', '000.000.000-00', true),
            divider,
            Options('Celular', '', false),
            divider,
            Options('E-mail', '', false),
            divider,
            Options('Chave aleatória', '', false),
            divider,
            Container(height: 235),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                primary: Colors.orange[800],
                backgroundColor: Colors.grey[850],
                side: BorderSide(color: Colors.orange.shade800, width: 1.2),
              ),
              child: Text(
                'Saiba mais',
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget Options(String title, String subtitle, bool hasSubtitle) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: hasSubtitle
          ? Text(
              subtitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            )
          : null,
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.orange[800],
      ),
    );
  }
}
