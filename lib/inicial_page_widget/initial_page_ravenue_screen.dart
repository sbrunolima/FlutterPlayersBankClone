import 'package:flutter/material.dart';

import '../screens/screens_loader.dart';
import '../inicial_page_widget/initial_page_ravenue_widget.dart';

class InitialPageRavenueScreen extends StatelessWidget {
  static const routeName = '/initial-page-revenue-screen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          elevation: 0,
          title: Text(
            'Minha carteira',
            style: TextStyle(color: Colors.orange[800], fontSize: 18),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined,
                color: Colors.orange[800]),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(ScreensLoader.routeName);
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  Icon(Icons.question_mark_outlined, color: Colors.orange[800]),
            ),
          ],
          bottom: TabBar(
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.white,
            labelColor: Colors.orange[800],
            tabs: [
              Tab(
                text: 'Janeiro 2022',
              ),
              Tab(
                text: 'Fevereiro 2022',
              ),
              Tab(
                text: 'Março 2022',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InitialPageRavenueWidget(),
            InitialPageRavenueWidget(),
            InitialPageRavenueWidget(),
          ],
        ),
      ),
    );
  }
}
