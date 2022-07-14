import 'package:bank_clone/inicial_page_widget/initial_actual_bill_screen.dart';
import 'package:flutter/material.dart';

import '../inicial_page_widget/initial_available_limit_screen.dart';

class AvailableLimitWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushReplacementNamed(InitialAvailableLimitScreen.routeName);
        },
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[850],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: Colors.orange[800],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Limite disponível',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                Divider(
                  indent: 2,
                  height: 20,
                  color: Colors.grey[900],
                  thickness: 8,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'R\$ *****',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.orange[800],
                        size: 15,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
