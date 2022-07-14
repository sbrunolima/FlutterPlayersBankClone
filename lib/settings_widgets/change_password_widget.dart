import 'package:flutter/material.dart';

import '../screens/start_screen.dart';
import '../login_page/user_input_text_field.dart';
import '../screens/account_initial_screen.dart';
import '../screens/screens_loader.dart';
import '../login_page/forgot_password.dart';
import './change_password_banner.dart';

class ChangePasswordWidget extends StatelessWidget {
  //get the user input

  final List<String> _text = [
    'Essa senha será usada para acessar o app e é diferente da sua senha do cartão. Guarde essa senha em segrança e não compartilhe com ninguém.'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      padding: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Digite uma ',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  Text(
                    'senha para o app.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //TextField
            UserInputTextField('Senha'),
            //----------------------------------------------------------
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Critérios para a criação da sua senha',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Explanations(
                  Icon(Icons.arrow_circle_right_outlined, color: Colors.white),
                  'A senha precisa ter no mínimo 6 caracteres',
                ),
                Explanations(
                  Icon(Icons.check, color: Colors.green),
                  'A senha pode ter no máximo 20 caracteres',
                ),
                Explanations(
                  Icon(Icons.check, color: Colors.green),
                  'A senha não pode ter no mais que 2 caracteres repetidos',
                ),
                Explanations(
                  Icon(Icons.arrow_circle_right_outlined, color: Colors.white),
                  'A senha precisa ter pelo menos 1 número',
                ),
                Explanations(
                  Icon(Icons.arrow_circle_right_outlined, color: Colors.white),
                  'A senha precisa ter pelo menos 1 letra minúscula',
                ),
                Explanations(
                  Icon(Icons.arrow_circle_right_outlined, color: Colors.white),
                  'A senha precisa ter pelo menos 1 letra maiúscula',
                ),
                SizedBox(height: 20),
                ChangePasswordBanner(
                  'Atenção: guarde essa senha',
                  60,
                  Colors.purple.shade200,
                  Icon(Icons.warning_amber_rounded,
                      size: 30, color: Colors.black),
                  Colors.black,
                  20,
                  0,
                ),
                ChangePasswordBanner(
                  _text[0],
                  110,
                  Colors.grey[850],
                  null,
                  Colors.white,
                  15,
                  10,
                )
              ],
            ),
            SizedBox(height: 20),
            RaisedButton(
              color: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 18),
              onPressed: () {},
              child: Text('Próximo'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Explanations(Widget icon, String title) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 17,
          color: Colors.white,
        ),
      ),
    );
  }
}
