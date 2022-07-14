import 'package:flutter/material.dart';

import '../help/help_screen.dart';
import '../help/help_options_list_widget.dart';

class HelpLimitScreen extends StatelessWidget {
  static const routeName = '/help-limit-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Limite',
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
            HelpOptionsList('Como consulto o limite do meu cartão de crédito?'),
            HelpOptionsList('Como altero o limite do meu cartão de crédito?'),
            HelpOptionsList('Como posso solicitar um aumento de limite?'),
            HelpOptionsList(
                'Como solicito o aumento de limita do meu cartão de crédito?'),
            HelpOptionsList(
                'De quanto em quanto tempo posso pedir para aumenta o limite do meu cartão?'),
            HelpOptionsList(
                'Posso transferir limite de algum outro cartão que eu já tenho para aumentar esse?'),
            HelpOptionsList(
                'Depois de pagar a fatura, em quanto tempo meu limite é liberado?'),
            HelpOptionsList('Qual é o limite do meu cartão virtual?'),
            HelpOptionsList(
                'Recebi um aumento temporário de limite. O que é isso?'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
