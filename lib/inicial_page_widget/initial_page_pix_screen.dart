import 'package:bank_clone/start_page/settings_pix_payments_widget.dart';
import 'package:flutter/material.dart';

import '../screens/screens_loader.dart';
import '../settings_widgets/pix_list_widget.dart';

class InitialPagePixScreen extends StatelessWidget {
  static const routeName = '/initial-pix--screen';

  @override
  Widget build(BuildContext context) {
    Widget divider = const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Divider(color: Colors.white, height: 1, thickness: 1),
    );

    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey[900],
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: Colors.orange[800]),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(ScreensLoader.routeName);
              },
            ),
            title: Text(
              'Pix',
              style: TextStyle(color: Colors.orange[800], fontSize: 18),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: PixListWidget(),
                ),
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        'Consultar',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.key_outlined, color: Colors.white),
                  title: Text(
                    'Minhas chaves Pix',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800],
                  ),
                ),
                divider,
                ListTile(
                  leading:
                      Icon(Icons.monetization_on_outlined, color: Colors.white),
                  title: Text(
                    'Limites Pix',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800],
                  ),
                ),
                divider,
                ListTile(
                  leading:
                      Icon(Icons.query_stats_outlined, color: Colors.white),
                  title: Text(
                    'Extratos/Devoluções',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800],
                  ),
                ),
                divider,
                ListTile(
                  leading:
                      Icon(Icons.help_center_outlined, color: Colors.white),
                  title: Text(
                    'Ajuda',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.orange[800],
                  ),
                ),
                divider
              ],
            ),
          ),
        ],
      ),
    );
  }
}
