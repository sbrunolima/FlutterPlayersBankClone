import 'package:flutter/material.dart';

import '../inicial_page_widget/initial_page_ravenue_screen.dart';

class BalanceAvailableWidget extends StatefulWidget {
  @override
  State<BalanceAvailableWidget> createState() => _BalanceAvailableWidgetState();
}

class _BalanceAvailableWidgetState extends State<BalanceAvailableWidget> {
  String _balance = '  *****';
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[850],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Saldo disponível',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  IconButton(
                    icon: _isVisible
                        ? Icon(Icons.visibility_outlined,
                            color: Colors.orange[800])
                        : Icon(Icons.visibility_off_outlined,
                            color: Colors.orange[800]),
                    onPressed: () {
                      if (_isVisible == false) {
                        setState(() {
                          _balance = '  *****';
                        });
                        _isVisible = true;
                      } else {
                        setState(() {
                          _balance = '  1459,98';
                        });
                        _isVisible = false;
                      }
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'R\$',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _balance,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Divider(
                height: 20,
                color: Colors.white,
                thickness: 1.2,
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(InitialPageRavenueScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ver meus rendimentos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.orange[800]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
