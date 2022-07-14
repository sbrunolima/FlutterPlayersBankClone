import 'package:flutter/material.dart';

import '../screens/screens_loader.dart';
import '../inicial_page_widget/initial_page_bill_widget.dart';

class InitialActualBillScreen extends StatelessWidget {
  static const routeName = '/initial-actial-bill-screen';

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
            'Fatura',
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
          bottom: TabBar(
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.white,
            labelColor: Colors.orange[800],
            tabs: [
              Tab(
                text: 'Janeiro',
              ),
              Tab(
                text: 'Fevereiro',
              ),
              Tab(
                text: 'Março',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InitialPageBillWidget(),
            InitialPageBillWidget(),
            InitialPageBillWidget(),
          ],
        ),
      ),
    );
  }
}
