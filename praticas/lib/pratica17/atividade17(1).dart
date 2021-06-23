import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        RotaGenerica.caminhoDaRota: (context) => RotaGenerica(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController celsius = TextEditingController();

  conversor() {
    double temp1 = double.parse(this.celsius.text);
    double total = (temp1 * 1.8 + 32);
    return 'Celsius: $temp1 graus \n Fahrenheit: $total graus ';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor de Temperatura'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: this.celsius,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => this.celsius.clear(),
                      icon: Icon(Icons.clear),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Informe a temperatura em Celsius',
                  ),
                )),
            ElevatedButton(
              child: Text("Converter para Fahrenheit"),
              onPressed: () {
                String resp = conversor();
                Navigator.pushNamed(
                  context,
                  RotaGenerica.caminhoDaRota,
                  arguments: ArgumentosDaRota(
                    'Resultado',
                    resp,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Center(
        child: Text(
          argumentos.mensagem,
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  String mensagem;
  ArgumentosDaRota(this.titulo, this.mensagem);
}
