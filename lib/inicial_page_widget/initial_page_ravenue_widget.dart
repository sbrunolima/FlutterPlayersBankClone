import 'package:flutter/material.dart';

class InitialPageRavenueWidget extends StatelessWidget {
  Widget divider = Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Divider(color: Colors.white, height: 0, thickness: 1),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ListTile(
            title: Text(
              'Rendimentos',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Text(
              '100% CDI',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'R\$ 0,00',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Options('Rendimento bruto', 'R\$ 0,00'),
        divider,
        Options('Impostos', 'R\$ 0,00'),
        divider,
        SizedBox(height: 30),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 110, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            primary: Colors.orange[800],
            backgroundColor: Colors.grey[850],
            side: BorderSide(color: Colors.orange.shade800, width: 1.2),
          ),
          child: Text(
            'Adicionar dinheiro',
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () {},
        ),
        Divider(color: Colors.white, thickness: 4, height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Outras informações',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ListTile(
            leading: Icon(
              Icons.monetization_on_outlined,
              color: Colors.orange[800],
            ),
            title: Text(
              'Informe de rendimentos',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.orange[800],
            ),
          ),
        ),
        divider,
      ],
    );
  }

  Widget Options(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListTile(
        leading: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: Text(
          subtitle,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
