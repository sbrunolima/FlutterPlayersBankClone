import 'package:flutter/material.dart';

import '../help/help_screen.dart';
import '../help/help_options_list_widget.dart';

class HelpBlockUnblockScreen extends StatelessWidget {
  static const routeName = '/help-block-unblock-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Bloqueio e desbloqueio',
          style: TextStyle(color: Colors.orange[800], fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.orange[800]),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(HelpScreen.routeName);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HelpOptionsList(
                'Perdi meu cartão/Meu cartão foi roubado. E agora?'),
            HelpOptionsList('Meu cartão chegou, como faço para desbloquear?'),
            HelpOptionsList(
                'Como faço para bloquear ou desbloquear temporariamente o eu cartão?'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
