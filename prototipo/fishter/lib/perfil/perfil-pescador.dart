import 'package:fishter/perfil/navigation_drawer_widget_pescador.dart';
import 'package:flutter/material.dart';

class PerfilPescador extends StatefulWidget {
  @override
  _PerfilPescadorState createState() => _PerfilPescadorState();
}

class _PerfilPescadorState extends State<PerfilPescador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Perfil', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
                child: Container(
              padding: EdgeInsets.fromLTRB(15, 45, 15, 15),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                child: Image.asset(
                  'assets/imagens/pescador.png',
                  width: 450,
                ),
              ),
            )),
            Text(
              'José Junior',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Pescador',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Brumadinho - MG',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '#32BT046',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Apresentação',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Olá, meu nome é José e sou pescador profissional a mais de 15 anos, tenho experiência em diversos tipos de pesca, esportiva e para caça etc.Também trabalho na proteção da falna e flora dos nossos lagos, rios e mares.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
