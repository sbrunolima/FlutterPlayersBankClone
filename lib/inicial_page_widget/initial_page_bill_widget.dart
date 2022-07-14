import 'package:flutter/material.dart';

import '../inicial_page_widget/bill_container_widget.dart';
import '../inicial_page_widget/options_widget.dart';


class InitialPageBillWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 30),
          BillContainerWidget(),
          SizedBox(height: 60),
          Titles('Resumo da fatura'),
          SizedBox(height: 5),
          Pad(20),
          OptionsWidget('Cashback recebido', 'R\$ 0,00', Colors.green, false),
          OptionsWidget(
              'Total da fatura anterior', 'R\$ 0,00', Colors.white, false),
          OptionsWidget(
              'Pagamentos realizados', 'R\$ 0,00', Colors.white, false),
          OptionsWidget('Compras parceladas', 'R\$ 0,00', Colors.white, false),
          OptionsWidget('Compras a vista', 'R\$ 0,00', Colors.white, false),
          OptionsWidget(
              'Compras internacionais', 'R\$ 0,00', Colors.white, false),
          OptionsWidget('Encargos', 'R\$ 0,00', Colors.white, false),
          OptionsWidget('Total', 'R\$ 0,00', Colors.white, true),
          SizedBox(height: 20),
          Titles('Lançamentos do mês'),
          SizedBox(height: 20),
          Image.asset(
            'assets/finance.png',
            scale: 2,
          ),
          SizedBox(height: 20),
          Text(
            'Fatura sem lançamentos',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Text(
                'Pode ser que demore até 7 dias para que uma compra apareça por aqui.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget Titles(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget Pad(double pad) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: pad),
      child: Divider(color: Colors.white, thickness: 1),
    );
  }
}
