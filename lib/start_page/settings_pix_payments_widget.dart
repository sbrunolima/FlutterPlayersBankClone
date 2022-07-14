import 'package:flutter/material.dart';

import '../start_page/payments_bar.dart';
import '../inicial_page_widget/initial_page_pix_screen.dart';
import '../inicial_page_widget/initial_page_payments_screen.dart';

class PixPaymentsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(InitialPagePixScreen.routeName);
            },
            child: PaymentsBar('Pix', Icons.pix_outlined),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(InitialPagePaymentsScreen.routeName);
            },
            child: PaymentsBar('Pagamentos', Icons.qr_code_rounded),
          ),
        ],
      ),
    );
  }
}
