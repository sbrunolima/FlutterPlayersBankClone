import 'package:flutter/material.dart';

import 'general_settings_screen.dart';
import 'credit_card_screen.dart';
import 'digital_account_screen.dart';
import '../screens/screens_loader.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings-screen';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String userName = '';
  double appBarHeight = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                leading: IconButton(
                  icon:
                      Icon(Icons.arrow_back_ios_new, color: Colors.orange[800]),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ScreensLoader.routeName);
                  },
                ),
                title: Text(
                  'Ajustes',
                  style: TextStyle(
                    color: Colors.orange[800],
                    fontSize: 18,
                  ),
                ),
                backgroundColor: Colors.grey[900],
                expandedHeight: appBarHeight,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    'Olá, User!\n\n',
                    style: TextStyle(
                      color: Colors.orange[800],
                    ),
                  ),
                ),
                bottom: TabBar(
                  labelColor: Colors.orange[800],
                  indicatorColor: Colors.orange[800],
                  isScrollable: true,
                  indicatorWeight: 4,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      text: 'Geral',
                    ),
                    Tab(
                      text: 'Cartão de crédito',
                    ),
                    Tab(
                      text: 'Conta digital',
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[850],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TabBarView(
                children: [
                  GeneralSettingsScreen(),
                  CreditCardScreen(),
                  DigitalAccountScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
