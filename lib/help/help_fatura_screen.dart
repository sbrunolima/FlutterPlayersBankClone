import 'package:flutter/material.dart';

import '../help/help_screen.dart';
import '../help/help_options_list_widget.dart';

class HelpFaturaScreen extends StatelessWidget {
  static const routeName = '/help-fatura-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Fatura',
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
            HelpOptionsList('Como pago a minha fatura?'),
            HelpOptionsList('Como vou receber minha fatura?'),
            HelpOptionsList(
                'Minha fatura está em atraso. Como faço para pagar?'),
            HelpOptionsList('Não reconheço uma compra na fatura do cartão?'),
            HelpOptionsList('Onde consulto o código de barras da fatura?'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
