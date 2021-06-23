import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();

  String resp = '';

  calculoImc() {
    double peso = double.parse(this.num01Controller.text);
    double altura = double.parse(this.num02Controller.text);
    double imc = peso / (altura * altura);

    if (imc < 16) {
      resp = '$imc = Magreza grave';
    } else if ((imc == 16) && (imc < 17)) {
      resp = '$imc = Magreza moderada';
    } else if ((imc == 17) && (imc < 18.5)) {
      resp = '$imc = Magreza leve';
    } else if ((imc == 18.5) && (imc < 25)) {
      resp = '$imc = Saudável';
    } else if ((imc == 25) && (imc < 30)) {
      resp = '$imc = Sobrepeso';
    } else if ((imc == 30) && (imc < 35)) {
      resp = '$imc = Obesidade Grau I';
    } else if ((imc == 35) && (imc < 40)) {
      resp = '$imc = Obesidade Grau II';
    } else if (imc >= 40) {
      resp = '$imc = Obesidade Grau III';
    }
    this.resp =
        'IMC: ' + imc.toStringAsFixed(2) + '/nClassificação: ' + this.resp;
    return resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o peso',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe a altura',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(calculoImc);
            },
            child: Text(
              'Calcular',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            this.resp,
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
