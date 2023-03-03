import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temp'),
      ),
      body: ListView(
          //children: _crearItems()),
          children: _crearItemsCorta()),
    );
  }

  //List<Widget> _crearItems() {
  //  List<Widget> lista = <Widget>[];
  //  for (String opt in opciones) {
  //    final tempWidget = ListTile(
  //      title: Text(opt),
  //    );
  //    lista..add(tempWidget)..add(const Divider());
  //  }
  //  return lista;
  //}

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: const Text('Cualquier cosa'),
            leading: const Icon(Icons.account_balance_wallet),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          const Divider()
        ],
      );
    }).toList();
  }
}
