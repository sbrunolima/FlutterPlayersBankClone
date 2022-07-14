import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/start_screen.dart';
import '../screens/screens_loader.dart';
import '../login_page/user_input_container.dart';
import '../settings_screen/settings_screen.dart';

class PasswordVisualScreen extends StatefulWidget {
  static const routeName = '/password-visualization-screen';

  @override
  State<PasswordVisualScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordVisualScreen> {
  final _text =
      'Agora você precisa da sua senha do app, \naquela que você usa no login.';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          highlightColor: Colors.transparent,
          icon: Icon(Icons.close, color: Colors.orange[800], size: 34),
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(SettingsScreen.routeName);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 400,
                  width: width,
                  child: Image.asset(
                    'assets/gamers3.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 120),
                  child: Row(
                    children: [
                      Text(
                        'Senha do ',
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 20,
                          color: Colors.orange[800],
                        ),
                      ),
                      Text(
                        'App',
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 20,
                          color: Colors.orange[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 160),
                  child: Text(
                    _text,
                    style: TextStyle(
                      color: Colors.orange[800],
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                UserInputContainer(false),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
