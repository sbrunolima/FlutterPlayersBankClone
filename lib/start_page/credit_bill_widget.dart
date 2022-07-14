import 'package:flutter/material.dart';

import '../inicial_page_widget/initial_actual_bill_screen.dart';

class CreditBillWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 270,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[850],
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.remove_red_eye_outlined,
                  color: Colors.orange[800]),
              title: Text(
                'Fatura atual',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Text(
                'Venc. 00/00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(InitialActualBillScreen.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'R\$ *****',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.orange[800],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(InitialActualBillScreen.routeName);
                },
                child: Text(
                  'A partir do dia 15, as compras serão lançadas na próxima fatura',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(InitialActualBillScreen.routeName);
              },
              child: Text(
                'Ver fatura',
                style: TextStyle(fontSize: 16),
              ),
              padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
              color: Colors.orange[800],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
