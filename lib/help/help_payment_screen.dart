import 'package:flutter/material.dart';

import '../help/help_screen.dart';
import '../help/help_options_list_widget.dart';

class HelpPaymentScreen extends StatelessWidget {
  static const routeName = '/help-payment-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Pagamento',
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
            HelpOptionsList('Quais opções de pagamento da fatura eu tenho?'),
            HelpOptionsList('Paguei a fatura, mas não consta o pagamento.'),
            HelpOptionsList(
                'Paguei a fatura duas vezes ou um valor a mais. E agora?'),
            HelpOptionsList('Onde posso paga a fatura do cartão de crédito?'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
