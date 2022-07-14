import 'package:flutter/material.dart';

import '../settings_screen/digital_account_data_screen.dart';
import 'settings_pix_space_screen.dart';
import './income_screen.dart';
import './user_terms_screen.dart';
import './cancel_account_screen.dart';

class DigitalAccountScreen extends StatelessWidget {
  static const routeName = '/digiral-account-screen';

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
            //CONTA DIGITAL-------------------------------------------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Conta Digital',
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
              leading:
                  Icon(Icons.lock_outline_rounded, color: Colors.orange[800]),
              title:
                  Text('Dados da Conta', style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.orange[800]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(DigitalAccountDataScreen.routeName);
              },
            ),
            divider,
            ListTile(
              leading: Icon(Icons.pix_rounded, color: Colors.orange[800]),
              title: Text('Espaço Pix', style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.orange[800]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(SettingsPixSpaceScreen.routeName);
              },
            ),
            divider,
            ListTile(
              leading: Icon(Icons.balance_outlined, color: Colors.orange[800]),
              title: Text('Informe de rendimentos',
                  style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.orange[800]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(IncomeScreen.routeName);
              },
            ),
            divider,
            SizedBox(height: 25),
            //GERAL---------------------------------------------------------------
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
              leading:
                  Icon(Icons.text_snippet_outlined, color: Colors.orange[800]),
              title: Text('Termos de uso da conta digital',
                  style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.orange[800]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(UserTermsScreen.routeName);
              },
            ),
            divider,
            ListTile(
              leading: Icon(Icons.delete_outline_outlined,
                  color: Colors.orange[800]),
              title: Text('Cancelar sua conta digital',
                  style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.orange[800]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(CancelAccountScreen.routeName);
              },
            ),
            divider,
          ],
        ),
      ),
    );
  }
}
