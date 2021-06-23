import 'package:flutter/material.dart';
import 'package:praticas/pratica15/atividade15.dart';
import 'package:praticas/pratica17/atividade17(2).dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        SegundaRota.caminhoDaRota: (context) => SegundaRota(),
        TerceiraRota.caminhoDaRota: (context) => TerceiraRota(),

      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController valorRealController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Column(
        children: [
          Container(
        alignment: Alignment.bottomCenter,
        child: TextField(
          child: Text('Conversão'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              RotaGenerica.caminhoDaRota,
              arguments: ArgumentosDaRota(
                'Segunda Rota',
                'Mensagem enviada da Primeira para a Segunda Rota como Argumento.',
              ),
            );
          },
        ),
          )
        ],
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
  double valorReal;
  double cotacao;
  ArgumentosDaRota(this.valorReal, this.cotacao;
}
