import 'package:flutter/material.dart';

import '../settings_widgets/user_data_widgets.dart';
import 'settings_screen.dart';

class UserDataScreen extends StatelessWidget {
  static const routeName = '/user-data-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Meus dados',
          style: TextStyle(color: Colors.orange[800], fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.orange[800]),
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(SettingsScreen.routeName);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Icon(Icons.remove_red_eye_outlined, color: Colors.orange[800]),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            UserDataWidgets('Nome completo', null),
            UserDataWidgets(
                'Apelido', Icon(Icons.edit_outlined, color: Colors.white)),
            UserDataWidgets('CPF', null),
            UserDataWidgets('RG', null),
            UserDataWidgets('Data de nascimento', null),
            UserDataWidgets(
                'Celular', Icon(Icons.edit_outlined, color: Colors.white)),
            UserDataWidgets(
                'Email', Icon(Icons.edit_outlined, color: Colors.white)),
            UserDataWidgets(
                'Endereço', Icon(Icons.edit_outlined, color: Colors.white)),
            UserDataWidgets('Nome da mãe', null),
            UserDataWidgets(
                'Profissão', Icon(Icons.edit_outlined, color: Colors.white)),
            UserDataWidgets(
                'Renda', Icon(Icons.edit_outlined, color: Colors.white)),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
