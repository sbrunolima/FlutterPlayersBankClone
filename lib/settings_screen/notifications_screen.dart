import 'package:flutter/material.dart';

import './settings_screen.dart';

class NotificationsScreen extends StatelessWidget {
  static const routeName = '/notifications-screen';

  final List<String> _text = [
    'Quer ficar por dentro de tudo que aconece? \n   Ative já suas notificações e aproveite!'
  ];

  @override
  Widget build(BuildContext context) {
    Widget divider = const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Divider(color: Colors.white, height: 1, thickness: 1),
    );

    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[850],
        title: Text(
          'Ajustes de notificações',
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
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Row(
              children: [
                Text(
                  _text[0],
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Options(
            'Receber notificações do app',
            Icon(
              Icons.notifications_none_outlined,
              color: Colors.orange[800],
            ),
            Icon(
              Icons.toggle_on,
              color: Colors.orange[800],
              size: 40,
            ),
          ),
          divider,
          Options(
            'Receber por e-mail',
            Icon(
              Icons.mail_outline_sharp,
              color: Colors.orange[800],
            ),
            Icon(
              Icons.toggle_on,
              color: Colors.orange[800],
              size: 40,
            ),
          ),
          divider,
          Options(
            'Receber por sms',
            Icon(
              Icons.message_outlined,
              color: Colors.orange[800],
            ),
            Icon(
              Icons.toggle_on,
              color: Colors.orange[800],
              size: 40,
            ),
          ),
          divider,
        ],
      ),
    );
  }

  Widget Options(String title, Widget iconLeading, Widget iconTrailing) {
    return ListTile(
      leading: iconLeading,
      title: Text(title, style: TextStyle(color: Colors.white)),
      trailing: iconTrailing,
    );
  }
}
