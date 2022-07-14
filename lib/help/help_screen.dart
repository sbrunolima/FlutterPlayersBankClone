import 'package:flutter/material.dart';

import '../help/help_text_field_widget.dart';
import '../help/help_list_widget.dart';
import '../help/help_limit_screen.dart';
import '../help/help_fatura_screen.dart';
import '../help/help_payment_screen.dart';
import '../help/help_block_unblock_screen.dart';
import '../help/help_cancel_screen.dart';
import '../help/help_more_options.dart';
import '../help/help_phone_screen.dart';
import '../screens/screens_loader.dart';

class HelpScreen extends StatelessWidget {
  static const routeName = '/help-screen';

  @override
  Widget build(BuildContext context) {
    Widget divider = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Divider(color: Colors.white, height: 0, thickness: 1),
    );

    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        title: Text(
          'Ajuda',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            HelpTextField('Qual é a sua dúvida?'),
            SizedBox(height: 10),
            Titles('Dúvidas frequentes'),

            //HELP LIST ----------------------------------------------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: HelpListWidget(),
            ),

            //CATEGORIES----------------------------------------------------------
            SizedBox(height: 35),
            Titles('Categorias'),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(HelpLimitScreen.routeName);
              },
              child: Options('Limite', Icons.monetization_on_outlined),
            ),
            divider,
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(HelpFaturaScreen.routeName);
              },
              child: Options('Fatura', Icons.request_page_outlined),
            ),
            divider,
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(HelpPaymentScreen.routeName);
              },
              child: Options('Pagamento', Icons.payments_outlined),
            ),
            divider,
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(HelpBlockUnblockScreen.routeName);
              },
              child: Options('Bloqueio e desbloqueio', Icons.lock_outline_sharp),
            ),
            divider,
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(HelpCancelScreen.routeName);
              },
              child: Options('Cancelamento', Icons.cancel_presentation_rounded),
            ),
            divider,
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(HelpMoreOptionsScreen.routeName);
              },
              child: Options('Mais opções', Icons.add),
            ),
            divider,

            //HELP CENTER----------------------------------------------------------
            SizedBox(height: 30),
            Titles('Fale conosco'),
            SizedBox(height: 10),
            Options('Chat', Icons.chat_outlined),
            divider,
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(HelpPhoneScreen.routeName);
              },
              child: Options('Telefone', Icons.phone_in_talk_outlined),
            ),
            divider,
          ],
        ),
      ),
    );
  }

  Widget Titles(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget Options(String title, var icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.orange[800],
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.orange[800],
        ),
      ),
    );
  }
}
