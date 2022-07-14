import 'package:flutter/material.dart';

import '../screens/start_screen.dart';
import '../login_page/user_input_text_field.dart';
import '../screens/account_initial_screen.dart';
import '../screens/screens_loader.dart';
import '../login_page/forgot_password.dart';

class UserInputContainer extends StatelessWidget {
  //get the user input

  final bool _isActive;

  UserInputContainer(this._isActive);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      padding: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            Text(
              'Digite a senha do app com letras e números.',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
            //TextField
            UserInputTextField('Senha'),
            //----------------------------------------------------------
            ForgotPassword('Esqueceu sua senha?'),
            SizedBox(height: 10),
            ForgotPassword('Ainda não tenho uma senha'),
            SizedBox(height: 20),

            RaisedButton(
              color: Colors.orange[800],
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 16),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(ScreensLoader.routeName);
              },
              child: Text('Avançar'),
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
