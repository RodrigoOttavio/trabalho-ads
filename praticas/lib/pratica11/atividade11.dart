import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.network(
                    "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Descricao01(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213786/pexels-photo-213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213787/pexels-photo-213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213788/pexels-photo-213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213789/pexels-photo-213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ],
        ),
      ),
    );
  }
}

/*class Descricao extends StatelessWidget{
  final String tituloAppBar, tituloTexto, texto;
  Descricao(
     this.tituloAppBar,
     this.tituloTexto,
     this.texto, {String texto, String tituloTexto, String tituloAppbar})
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.tituloAppBar,
        
        ),
      ),
      body: Center (
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 90, 10, 90),
              child: Text(
                this.tituloTexto,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 50, 30, 50),
              child: Text(
                this.tituloTexto,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}*/
class Descricao01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova York"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Nova York, EUA',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              margin: EdgeInsets.fromLTRB(5, 90, 5, 2),
            ),
            Expanded(
              child: Container(
                child: Text(
                  'A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principais centros comerciais, financeiros e culturais do mundo (Wikipedia).',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(30, 100, 5, 80),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'Voltar',
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
