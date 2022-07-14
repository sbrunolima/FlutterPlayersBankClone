import 'package:flutter/material.dart';

import '../screens/screens_loader.dart';

class InitialAvailableLimitScreen extends StatelessWidget {
  static const routeName = '/initial-available-limit-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Limite',
          style: TextStyle(color: Colors.orange[800], fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.orange[800]),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(ScreensLoader.routeName);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Text(
              'Meu limite',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 20),
          Valor(),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Min: 0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Max: 0.000',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Colors.green,
              thickness: 15,
            ),
          ),
          SizedBox(height: 30),
          Options('Utilizado', Colors.purpleAccent),
          Pad(15),
          Options('Dispinível', Colors.greenAccent),
          Pad(15),
          SizedBox(height: 210),
          RaisedButton(
            onPressed: () {},
            child: Text(
              'Ajustar limite',
              style: TextStyle(fontSize: 16),
            ),
            padding: EdgeInsets.symmetric(horizontal: 125, vertical: 16),
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          SizedBox(height: 15),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              primary: Colors.orange[800],
              backgroundColor: Colors.grey[850],
              side: BorderSide(color: Colors.orange.shade800),
            ),
            child: Text(
              'Solicitar mais limite',
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget Pad(double size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size),
      child: Divider(
        color: Colors.white,
        thickness: 1,
      ),
    );
  }

  Widget Options(String title, var color) {
    return ListTile(
      leading: Icon(Icons.circle, color: color),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      trailing: Text(
        'R\$ 0.000,000',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget Valor() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white30),
          borderRadius: BorderRadius.circular(6),
          color: Colors.grey[850],
        ),
        child: Row(
          children: [
            Text(
              ' R\$ 0.000,00  ',
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
            Icon(Icons.edit_outlined, color: Colors.orange[800]),
          ],
        ),
      ),
    );
  }
}
