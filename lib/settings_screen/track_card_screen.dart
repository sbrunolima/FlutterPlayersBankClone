import 'package:flutter/material.dart';

import './settings_screen.dart';

class TrackCardScreen extends StatelessWidget {
  static const routeName = '/track-card-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          elevation: 0,
          title: Text(
            'Rastreio de cartão',
            style: TextStyle(color: Colors.orange[800], fontSize: 18),
          ),
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
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(0),
                color: Colors.transparent,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/CreditCard.png',
                scale: 5,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 260,
                child: Text(
                  'Nenhum pedido em andamento',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 400,
                child: Text(
                  'Você não possui nenhum pedido de cartão em andamento.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Container(
              height: 200,
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
              padding: EdgeInsets.symmetric(horizontal: 140, vertical: 18),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(SettingsScreen.routeName);
              },
              child: Text('Ok, entendi'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ],
        ));
  }
}
