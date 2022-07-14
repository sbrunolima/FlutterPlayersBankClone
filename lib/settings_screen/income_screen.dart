import 'package:flutter/material.dart';

import '../settings_screen/settings_screen.dart';

class IncomeScreen extends StatelessWidget {
  static const routeName = '/income-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          elevation: 0,
          title: Text(
            'Informe de rendimentos',
            style: TextStyle(color: Colors.orange[800], fontSize: 18),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined,
                color: Colors.orange[800]),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(SettingsScreen.routeName);
            },
          ),
        ),
        body: Container(
          height: 1000,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[850],
          ),
          child: Column(
            children: [
              SizedBox(height: 100),
              Image.asset(
                'assets/NotFound.png',
                scale: 3,
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 300,
                child: Text(
                  'Você não tem informe de rendimentos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                height: 60,
                width: 300,
                child: Text(
                  'Como você não tinha a conta digital ano passado, não vai precisar de informe de rendimentos.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ));
  }
}
