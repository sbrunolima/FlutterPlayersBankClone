import 'package:flutter/material.dart';

import 'temporary_virtual_card_widget.dart';
import '../wallet/recorrent_virtual_card_widget.dart';
import '../screens/screens_loader.dart';
import '../wallet/phisical_card_widget.dart';

class WalletScreen extends StatelessWidget {
  static const routeName = '/wallet-screen';

  final List<String> _text = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.grey[850],
          appBar: AppBar(
            backgroundColor: Colors.grey[850],
            elevation: 0,
            title: Text(
              'Minha carteira',
              style: TextStyle(color: Colors.orange[800], fontSize: 18),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_outlined,
                  color: Colors.orange[800]),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(ScreensLoader.routeName);
              },
            ),
            bottom: TabBar(
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.white,
              labelColor: Colors.orange[800],
              tabs: [
                Tab(
                  icon: Icon(Icons.credit_card_outlined),
                  text: 'Gerar virtual \n temporário',
                ),
                Tab(
                  icon: Icon(Icons.credit_card_outlined),
                  text: 'Gerar virtual \n  recorrente',
                ),
                Tab(
                  icon: Icon(Icons.credit_score),
                  text: 'Cartão \n físico',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TemporaryVirtualCardWidget(),
              RecorrentVirtualCardWidget(),
              PhisicalCardWidget(),
            ],
          )),
    );
  }
}
