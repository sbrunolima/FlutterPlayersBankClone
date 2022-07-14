import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';

import 'user_data_screen.dart';
import 'change_password_screen.dart';
import './notifications_screen.dart';
import './privacy_police_screen.dart';
import 'credit_card_contract_screen.dart';
import './open_banking_screen.dart';
import '../screens/start_screen.dart';

class GeneralSettingsScreen extends StatelessWidget {
  static const routeName = '/genaral-settings-screen';

  @override
  Widget build(BuildContext context) {
    Widget divider = const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Divider(color: Colors.white, height: 1, thickness: 1),
    );

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: <Widget>[
              //DADOS-----------------------------------------------------------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Seus dados',
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
                leading: Icon(Icons.person_outline_outlined,
                    color: Colors.orange[800]),
                title: Text(
                  'Dados pessoais',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800]),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(UserDataScreen.routeName);
                },
              ),
              divider,
              SizedBox(height: 20),

              //SEGURANÇA-------------------------------------------------------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Segurança',
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
                leading: Icon(Icons.password, color: Colors.orange[800]),
                title: Text(
                  'Trocar senha do app',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Altere a senha de acesso ao app',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800]),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ChangePasswordScreen.routeName);
                },
              ),
              divider,
              ListTile(
                leading: Icon(Icons.fingerprint, color: Colors.orange[800]),
                title: Text(
                  'Autenticação biométrica',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Habilitar login por biometria',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(
                  Icons.toggle_on,
                  color: Colors.orange[800],
                  size: 40,
                ),
              ),
              divider,
              ListTile(
                leading:
                    Icon(Icons.credit_card_outlined, color: Colors.orange[800]),
                title: Text(
                  'Manter conectado',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Não solicitar senha ao entrar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(
                  Icons.toggle_on,
                  color: Colors.orange[800],
                  size: 40,
                ),
              ),
              divider,
              SizedBox(height: 20),

              //GERAL-----------------------------------------------------------
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
                leading: Icon(Icons.notifications_none_outlined,
                    color: Colors.orange[800]),
                title: Text(
                  'Notificações',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800]),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(NotificationsScreen.routeName);
                },
              ),
              divider,
              ListTile(
                leading: Icon(Icons.text_snippet_outlined,
                    color: Colors.orange[800]),
                title: Text(
                  'Politica de privacidade',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800]),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(PrivacyPoliceScreen.routeName);
                },
              ),
              divider,
              ListTile(
                leading: Icon(Icons.text_snippet_outlined,
                    color: Colors.orange[800]),
                title: Text(
                  'Contrato de cartão de crédito',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800]),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(CreditCardContractScreen.routeName);
                },
              ),
              divider,
              ListTile(
                leading: Icon(Icons.delete_outline_outlined,
                    color: Colors.orange[800]),
                title: Text(
                  'Excuir sua conta',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800]),
              ),
              divider,
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://github.com/sbrunolima'),
                builder: (context, followLink) => ListTile(
                  onTap: followLink,
                  leading: Icon(Icons.star_border_outlined,
                      color: Colors.orange[800]),
                  title: Text(
                    'Classifique o app',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.orange[800]),
                ),
              ),
              divider,
              ListTile(
                leading: Icon(Icons.account_balance_outlined,
                    color: Colors.orange[800]),
                title: Text(
                  'Open Banking',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800]),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(OpenBankingScreen.routeName);
                },
              ),
              divider,
              ListTile(
                leading:
                    Icon(Icons.exit_to_app_outlined, color: Colors.orange[800]),
                title: Text(
                  'Sair',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800]),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(StartScreen.routeName);
                },
              ),
              divider,
              SizedBox(height: 5),

              //LOGO------------------------------------------------------------
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[850],
                ),
                child: Center(
                  child: Text(
                    'pb',
                    style: TextStyle(
                      fontFamily: 'FlightCorpsExpanded',
                      fontSize: 60,
                      color: Colors.orange[800],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
