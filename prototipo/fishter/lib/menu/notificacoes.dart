import 'package:fishter/perfil/perfil-comerciante.dart';
import 'package:flutter/material.dart';

class Notificacoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificações'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              'As notificações serão vistas aqui, quando surgirem.',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            ButtonTheme(
              height: 60.0,
              child: RaisedButton(
                onPressed: () => {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PerfilComerciante())),
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Text(
                  "Voltar",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ), //Text
                color: Colors.black,
              ), //RaisedButton
            ),
          ],
        ),
      ),
    );
  }
}
