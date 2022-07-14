import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import './settings_screen.dart';

class PaymentDateScreen extends StatelessWidget {
  static const routeName = '/payment-date-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Text(
          'Alterar dia de vencimento',
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
      body: Column(
        children: [
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Column(
              children: [
                Text(
                  'Escolha o novo dia de vencimento fa sua fatura',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SfCalendar(
                    blackoutDatesTextStyle: TextStyle(color: Colors.white),
                    cellBorderColor: Colors.white,
                    backgroundColor: Colors.white10,
                    view: CalendarView.month,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(0),
              color: Colors.transparent,
            ),
          ),
          SizedBox(height: 30),
          RaisedButton(
            color: Colors.grey,
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 18),
            onPressed: () {},
            child: Text('Alterar dia de vencimento'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        ],
      ),
    );
  }
}
