import 'package:flutter/material.dart';

import '../wallet/wallet_password_screen.dart';

class TemporaryVirtualCardWidget extends StatelessWidget {
  final List<String> _text = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 800,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[850],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(WalletPasswordScreen.routeName);
                    },
                    child: Image.asset('assets/card2.png', scale: 2.5),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        'Cartão Virtual vs. Físico',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    child: Text(
                      _text[0] + '\n\n' + _text[0] + '\n\n' + _text[0],
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
