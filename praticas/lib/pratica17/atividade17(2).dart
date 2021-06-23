import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/segundaRota': (context) => SegundaRota(),
        '/terceiraRota': (context) => TerceiraRota(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController valorEmRealController = TextEditingController();
var valor1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor em Reais'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: this.valorEmRealController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => this.valorEmRealController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Informe o valor do Real',
                ),
              ),
            ),
            ElevatedButton(
              child: Text(
                "Próximo"
                ),
              onPressed: (){
                valor1 = double.parse(valorEmRealController.text);
                Navigator.pushNamed(
                    context, '/segundaRota',
                    arguments: valor1);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  static const caminhoDaRota = '/segundaRota';
  final TextEditingController valorEmDollarController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor em Dollar'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(''),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: this.valorEmDollarController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => this.valorEmDollarController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Informe o valor do Dollar',
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Próximo"),
              onPressed: () {
                Navigator.pushNamed(context, SegundaRota.caminhoDaRota,
                    arguments: double.parse(valorEmDollarController.text));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TerceiraRota extends StatelessWidget {
  static const caminhoDaRota = '/terceiraRota';
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
  Double valor1;
  double valor2;
  ArgumentosDaRota(this.valor1, this.valor2;
}
