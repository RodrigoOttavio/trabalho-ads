import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Descricao {
  String tituloBarraAplicativo, tituloDescricao, textoDescricao;

  Descricao(
      {required this.tituloBarraAplicativo,
      required this.textoDescricao,
      required this.tituloDescricao});
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213781/pexels-photo213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SegundaRota(
                      descricao: Descricao(
                          tituloBarraAplicativo: 'Nova York',
                          tituloDescricao: 'Nova York, EUA',
                          textoDescricao:
                              'A cidade de Nova York compreende 5 distritos situadosno encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principa is centros comerciais, financeiros e culturais do mundo (Wikipedia).'))),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213782/pexels-photo213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213783/pexels-photo213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213784/pexels-photo213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213785/pexels-photo213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213786/pexels-photo213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213787/pexels-photo213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213788/pexels-photo213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
                "https://images.pexels.com/photos/213789/pexels-photo213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  final Descricao descricao;

  SegundaRota({required this.descricao});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.descricao.tituloBarraAplicativo}'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '${this.descricao.tituloDescricao}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              margin: EdgeInsets.fromLTRB(10, 100, 5, 80),
            ),
            Expanded(
              child: Container(
                child: Text(
                  '${this.descricao.textoDescricao}',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(30, 100, 5, 80),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'Voltar para a página inicial',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
