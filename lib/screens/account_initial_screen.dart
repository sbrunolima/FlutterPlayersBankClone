import 'package:flutter/material.dart';

import '../start_page/account_initial_appbar.dart';
import '../start_page/balance_available_widget.dart';
import '../start_page/settings_pix_payments_widget.dart';
import '../start_page/last_transactions_up_widget.dart';
import '../start_page/last_transactions_down_widget.dart';
import '../start_page/available_limit_widget.dart';
import '../start_page/card_list_container_widget.dart';
import '../start_page/advertisement_widget.dart';
import '../start_page/players_club_widget.dart';
import '../screens/account_initial_screen.dart';
import '../screens/password_screen.dart';
import '../screens/start_screen.dart';
import '../settings_screen/settings_screen.dart';
import '../start_page/account_initial_appbar.dart';
import '../start_page/credit_bill_widget.dart';
import '../help/help_screen.dart';

class AccountInitialScreen extends StatefulWidget {
  static const routeName = '/account-initial-screen';

  @override
  State<AccountInitialScreen> createState() => _AccountInitialScreenState();
}

class _AccountInitialScreenState extends State<AccountInitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      drawerEnableOpenDragGesture: false,
      extendBodyBehindAppBar: true,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: AccountInitialAppBar(),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(
                icon: Icon(Icons.search, color: Colors.orange[800]),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(HelpScreen.routeName);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: IconButton(
                  icon:
                      Icon(Icons.settings_outlined, color: Colors.orange[800]),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SettingsScreen.routeName);
                  },
                ),
              ),
            ],
          )
        ],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                BalanceAvailableWidget(),
                PixPaymentsWidget(),
                LastTransactionsUpWidget(
                    'Você ainda não realizou nenhuma \nmovimentação'),
                CreditBillWidget(),
                AvailableLimitWidget(),
                CardListContainerWidget(),
                AdvertisementWidget(),
                LastTransactionsDownWidget(
                    'Você ainda não realizou nenhuma \ncompra'),
                PlayersClubWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
