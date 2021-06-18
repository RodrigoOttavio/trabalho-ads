import 'package:flutter/material.dart';
import 'navigation_drawe_widget_comerciante.dart';

class PerfilComerciante extends StatefulWidget {
  @override
  _PerfilComercianteState createState() => _PerfilComercianteState();
}

class _PerfilComercianteState extends State<PerfilComerciante> {
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
                    'assets/imagens/comerciante.jpg',
                    width: 450,
                  ),
                ),
              ),
            ),
            Text(
              'Matheus Oliveira',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Comerciante',
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
              '#8942JL9',
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
                'Guia, pescador, empreendedor... Essas são algumas de minhas profissões, mas principalmente um pai de família, onde faço o possível para o bem do meu lar. Tenho experiência na confecção de artesanato é pesca predatória, onde que tiro o meu sustento.',
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
