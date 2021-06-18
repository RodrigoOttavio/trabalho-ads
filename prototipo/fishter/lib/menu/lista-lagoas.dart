import 'package:fishter/perfil/mapa.dart';
import 'package:flutter/material.dart';

class ListaLagoas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de lagoas disponíveis'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          FlatButton(
            child: ListTile(
              title: Text('Lagoa de Brumadinho'),
              subtitle: Text('Ver localização'),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/imagens/lagoa-brum.jpg'),
              ),
            ),
            onPressed: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Mapa(),
                ),
              ),
            },
          ),
          FlatButton(
            child: ListTile(
              title: Text('Lagoa de Santa Lucia'),
              subtitle: Text('Ver localização'),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/imagens/santa-lucia.jpg'),
              ),
            ),
            onPressed: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Mapa(),
                ),
              ),
            },
          )
        ],
      ),
      floatingActionButton: RaisedButton(
        onPressed: () => {Navigator.pop(context)},
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        child: Text(
          "Voltar",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ), //Text
        color: Colors.black,
      ), //RaisedButton
    );
  }
}
