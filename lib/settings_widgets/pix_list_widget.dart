import 'package:flutter/material.dart';

import '../start_page/card_list_widget.dart';
import '../pix/pix_transfer_screen.dart';
import '../pix/receive_pix_screen.dart';
import '../pix/pix_copy_paste_screen.dart';

class PixListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(PixTransferScreen.routeName);
              },
              child: CardListWidget('Fazer \ntransferêcia', Icons.send),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            CardListWidget('Pagar \nQR Code', Icons.qr_code_rounded),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(ReceivePixScreen.routeName);
              },
              child: CardListWidget(
                  '\nReceber Pix', Icons.qr_code_scanner_rounded),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(PixCopyPasteScreen.routeName);
              },
              child: CardListWidget('Pix Copia e \nCola', Icons.copy),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            CardListWidget('  \nSacar', Icons.download_outlined),
          ],
        ),
      ),
    );
  }
}
