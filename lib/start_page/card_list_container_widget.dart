import 'package:flutter/material.dart';

import '../start_page/card_list_widget.dart';
import '../inicial_page_widget/initial_page_phisical_card_screen.dart';
import '../inicial_page_widget/initial_available_limit_screen.dart';
import '../inicial_page_widget/initial_request_card_screen.dart';

class CardListContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CardListWidget('Gerar cartão \nvirtual', Icons.credit_card),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(
                    InitialPagePhisicalCardScreen.routeName);
              },
              child: CardListWidget('Meu \nCatão', Icons.credit_card),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(
                    InitialAvailableLimitScreen.routeName);
              },
              child: CardListWidget(
                  'Meu \nlimite', Icons.account_balance_outlined),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            CardListWidget('Bloquear \ncartão', Icons.lock_outline_rounded),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(
                    InitialRequestNewCardScreen.routeName);
              },
              child:
                  CardListWidget('2ª via do \ncartão', Icons.add_card_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
