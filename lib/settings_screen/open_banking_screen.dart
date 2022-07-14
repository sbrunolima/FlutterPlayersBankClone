import 'package:flutter/material.dart';

import './settings_screen.dart';

class OpenBankingScreen extends StatelessWidget {
  static const routeName = '/open-banking-screen';

  final List<String> _text = [
    'Sua vida financeira na palma da sua mão',
    'O Open Banking é um sistema financeiro aberto, gratuito e seguto pra você copartilhar seus dados com diferentes instituições financeiras. \n\nCom Open Banking você pode compartilhar dados de outras instituições financeiras para que a gente te conheça melhor.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(''),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.orange[800]),
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(SettingsScreen.routeName);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Image.asset('assets/OpenBanking.png')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Container(
                  child: Text(
                    _text[0],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text(
                    _text[1],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(0),
              color: Colors.transparent,
            ),
          ),
          SizedBox(height: 10),
          RaisedButton(
            color: Colors.orange[800],
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 18),
            onPressed: () {},
            child: Text('Conheça o Open Banking'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        ],
      ),
    );
  }
}
