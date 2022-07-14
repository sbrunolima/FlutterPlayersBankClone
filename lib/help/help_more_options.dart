import 'package:flutter/material.dart';

import '../help/help_screen.dart';
import '../help/help_options_list_widget.dart';

class HelpMoreOptionsScreen extends StatelessWidget {
  static const routeName = '/help-more-options-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Mais opções',
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
            HelpOptionsList('Cashback'),
            HelpOptionsList('Bloqueio e desbloqueio'),
            HelpOptionsList('Cancelamento'),
            HelpOptionsList('Cartão'),
            HelpOptionsList('Cartão Virtual'),
            HelpOptionsList('Carteiras Digitais'),
            HelpOptionsList('Compras'),
            HelpOptionsList('Conta Digital - Cadastro e bloqueio da conta'),
            HelpOptionsList('Conta Digital - Consulta de Saldo'),
            HelpOptionsList('Conta Digital - Onde você pode falar com a gente'),
            HelpOptionsList('Conta Digital - Open Finance'),
            HelpOptionsList('Conta Digital - Pagamentos de Contas'),
            HelpOptionsList('Conta Digital - Rendimento'),
            HelpOptionsList('Conta Digital - Timeline'),
            HelpOptionsList('Conta Digital - Transações'),
            HelpOptionsList('Contato'),
            HelpOptionsList('Contestação de Compras'),
            HelpOptionsList('Fatura'),
            HelpOptionsList('Limite'),
            HelpOptionsList('Pagamento'),
            HelpOptionsList('Parcelamento de Fatura'),
            HelpOptionsList('Planos'),
            HelpOptionsList('Senha'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
