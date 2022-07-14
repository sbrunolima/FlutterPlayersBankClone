import 'package:flutter/material.dart';

import '../screens/account_initial_screen.dart';
import '../screens/start_screen.dart';
import '../settings_screen/settings_screen.dart';
import '../help/help_screen.dart';
import '../wallet/wallet_screen.dart';

class ScreensLoader extends StatefulWidget {
  static const routeName = '/screen-loader-screen';

  @override
  State<ScreensLoader> createState() => _ScreensLoaderState();
}

class _ScreensLoaderState extends State<ScreensLoader> {
  int index = 0;

  final screens = [
    AccountInitialScreen(),
    WalletScreen(),
    HelpScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.transparent,
          labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, color: Colors.white)),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Colors.grey[850],
          selectedIndex: index,
          onDestinationSelected: (index) => setState(
            () {
              this.index = index;
            },
          ),
          destinations: [
            NavigationDestination(
              selectedIcon: Icon(Icons.home, color: Colors.orange[800]),
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.wallet, color: Colors.orange[800]),
              icon: Icon(Icons.wallet, color: Colors.white),
              label: 'Carteira',
            ),
            NavigationDestination(
              selectedIcon:
                  Icon(Icons.live_help_outlined, color: Colors.orange[800]),
              icon: Icon(Icons.live_help_outlined, color: Colors.white),
              label: 'Ajuda',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.settings, color: Colors.orange[800]),
              icon: Icon(Icons.settings, color: Colors.white),
              label: 'Ajustes',
            ),
          ],
        ),
      ),
    );
  }
}
