import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/password_screen.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/start-screen';
  Text jogaJunto = Text('joga junto');

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawerEnableOpenDragGesture: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: height,
                  width: width,
                  child: Image.asset(
                    'assets/gamers7.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 50),
                  child: Row(
                    children: [
                      Text(
                        'pb',
                        style: TextStyle(
                          fontFamily: 'FlightCorpsExpanded',
                          fontSize: 100,
                          color: Colors.orange[800],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 79, vertical: 66),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "PLAYER'S \nBANK",
                        style: TextStyle(
                          fontFamily: 'OmegleRegular-owopB',
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 145, vertical: 110),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Itaú",
                        style: TextStyle(
                          fontFamily: 'OmegleRegular-owopB',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 500,
                      width: width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.transparent,
                      ),
                    ),
                    //MIDLE TEXT--------------------------------------------------
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 30),
                      child: Row(
                        children: [
                          Text(
                            'o banco que ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'joga junto',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //BUTTONS-----------------------------------------------------
                    Column(
                      children: [
                        RaisedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(PasswordScreen.routeName);
                          },
                          child: Text(
                            'Entrar',
                            style: TextStyle(fontSize: 16),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 150, vertical: 16),
                          color: Colors.orange[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        SizedBox(height: 15),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 105, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                            primary: Colors.orange[800],
                            backgroundColor: Colors.black,
                            side: BorderSide(color: Colors.orange.shade800),
                          ),
                          child: Text(
                            'Quero minha conta',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {},
                        ),

                        //BOTTOM TEXT---------------------------------------------
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Central de ajuda',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.orange,
                                    decoration: TextDecoration.underline),
                              ),
                              Text(
                                'Termos de uso',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.orange,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
