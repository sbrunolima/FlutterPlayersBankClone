import 'package:flutter/material.dart';

import '../wallet/wallet_screen.dart';
import '../wallet/wallet_screen.dart';
import '../wallet/phisical_card_options_widget.dart';

class PhisicalCardScreen extends StatelessWidget {
  static const routeName = '/phisical-card-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Cartão físico',
          style: TextStyle(color: Colors.orange[800], fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.orange[800]),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(WalletScreen.routeName);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/card1.png', scale: 2.5),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      'melhor data de compra',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '00/00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'vencimento da fatura',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '00/00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          PhisicalCardOptionsWidget(
            'Visualizar senha',
            'Para não esquecer ao comprar com chip',
            Icons.password_outlined,
            Icons.arrow_forward_ios_outlined,
            25,
          ),
          PhisicalCardOptionsWidget(
            'Visualizar senha',
            'Para não esquecer ao comprar com chip',
            Icons.airplanemode_active_outlined,
            Icons.toggle_off_outlined,
            30,
          ),
          PhisicalCardOptionsWidget(
            'Bloqueio tamporário',
            'Desbloqueie quando quiser',
            Icons.lock_clock_outlined,
            Icons.toggle_off_outlined,
            30,
          ),
          PhisicalCardOptionsWidget(
            'Compras por apriximação',
            'Controle a aproximação do cartão',
            Icons.contactless_outlined,
            Icons.toggle_off_outlined,
            30,
          ),
        ],
      ),
    );
  }
}
