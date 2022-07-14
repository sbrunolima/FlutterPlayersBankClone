import 'package:flutter/material.dart';

import '../settings_screen/settings_pix_space_screen.dart';

class PixTransferScreen extends StatelessWidget {
  static const routeName = '/pix-transfer-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Fazer transferência',
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
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Text(
                  'Pra quem você quer transferir?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.send, color: Colors.white),
            title: Text(
              'Nova transferência',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.orange[800]),
          ),
          SizedBox(height: 70),
          Image.asset(
            'assets/lupa.png',
            scale: 5,
          ),
          SizedBox(height: 30),
          Text(
            'Nenhum contato adicionado',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Text(
              'Para adicionar um contato, é necessário fazer uma nova transferência.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
