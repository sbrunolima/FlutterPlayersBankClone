import 'package:flutter/material.dart';

import './settings_screen.dart';

class RequestNewCardScreen extends StatelessWidget {
  static const routeName = '/request-new-card-scree';

  @override
  Widget build(BuildContext context) {
    final sizedBox = SizedBox(height: 40);

    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Solocitação de 2ª via',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                'Selecione abaixo o motivo da solicitação de um novo cartão',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            sizedBox,
            Options('Cartão Quebrado'),
            sizedBox,
            Options('Cartão Rsurado'),
            sizedBox,
            Options('Perda'),
            sizedBox,
            Options('Roubo'),
            sizedBox,
            Options('Furto'),
            sizedBox,
            Options('Não recebi o cartão'),
            sizedBox,
            Options('Cartão com defeito'),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(0),
                color: Colors.transparent,
              ),
            ),
            SizedBox(height: 10),
            RaisedButton(
              color: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 140, vertical: 18),
              onPressed: () {},
              child: Text('continuar'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Options(String title) {
    return Row(
      children: [
        Icon(Icons.circle_outlined, color: Colors.white),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
