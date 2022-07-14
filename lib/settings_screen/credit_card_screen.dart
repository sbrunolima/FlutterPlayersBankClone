import 'package:flutter/material.dart';

import './change_payment_date_screen.dart';
import './password_visualization_screen.dart';
import './request_new_card_screen.dart';
import '../settings_screen/track_card_screen.dart';

class CreditCardScreen extends StatelessWidget {
  static const routeName = '/credit-card-screen';

  @override
  Widget build(BuildContext context) {
    Widget divider = const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Divider(color: Colors.white, height: 1, thickness: 1),
    );

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Geral',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.credit_card, color: Colors.orange[800]),
              title: Text(
                'Alterar dia de vencimento',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.orange[800]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(PaymentDateScreen.routeName);
              },
            ),
            divider,
            ListTile(
              leading: Icon(Icons.password, color: Colors.orange[800]),
              title: Text(
                'Visualizar senha',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.orange[800]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(PasswordVisualScreen.routeName);
              },
            ),
            divider,
            ListTile(
              leading: Icon(Icons.credit_card, color: Colors.orange[800]),
              title: Text(
                'Solicitação de 2ª via de cartão',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.orange[800]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(RequestNewCardScreen.routeName);
              },
            ),
            divider,
            ListTile(
              leading: Icon(Icons.credit_card, color: Colors.orange[800]),
              title: Text(
                'Acompanhar rastreio de cartão',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.orange[800]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(TrackCardScreen.routeName);
              },
            ),
            divider,
          ],
        ),
      ),
    );
  }
}
