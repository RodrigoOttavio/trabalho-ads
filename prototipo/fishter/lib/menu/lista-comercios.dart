import 'package:fishter/perfil/mapa.dart';
import 'package:flutter/material.dart';

class ListaComercios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de lojas disponíveis'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          FlatButton(
              child: ListTile(
                title: Text('Loja do Matheus'),
                subtitle: Text('Produtos para pesca'),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      AssetImage('assets/imagens/loja-matheus.jpg'),
                ),
              ),
              onPressed: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Mapa(),
                      ),
                    ),
                  }),
          FlatButton(
            child: ListTile(
              title: Text('Lanchonete Boa Vista'),
              subtitle: Text('Lanches, almoço e doces'),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/imagens/lanchonete.jpg'),
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
