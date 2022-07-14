import 'package:flutter/material.dart';

import '../help/help_screen.dart';

class FrequentQuestionsScreen extends StatelessWidget {
  static const routeName = '/freqent-question-screen';

  final List<String> _texts = [
    'Como consulto o limite do meu cartão de crédito?',
    'Você pode consultar o valor disponível de limite tocando em Limite disponível ou no atalho alterar limite na tela de inicio do aplicativo'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          elevation: 0,
          title: Text(
            'Como consulto o limite do meu cartão de crédito?',
            style: TextStyle(color: Colors.orange[800], fontSize: 18),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined,
                color: Colors.orange[800]),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(HelpScreen.routeName);
            },
          ),
        ),
        body: Column(
          children: [
            //TITLE-------------------------------------------------------------
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Text(
                  _texts[0],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),

            //TEXT-------------------------------------------------------------
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Text(
                  _texts[1],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(height: 300),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.white, thickness: 1),
            ),

            //ANSWER-------------------------------------------------------------
            SizedBox(height: 15),
            Text(
              'Essa informação foi útil?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

            //BUTTONS----------------------------------------------------------
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(color: Colors.orange.shade800)),
                    child: Text(
                      'Sim',
                      style: TextStyle(color: Colors.orange[800]),
                    ),
                    onPressed: () {},
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(color: Colors.orange.shade800)),
                    child: Text(
                      'Não',
                      style: TextStyle(color: Colors.orange[800]),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
