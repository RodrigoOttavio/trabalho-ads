import 'package:fishter/cadastro/cadastro-comerciante.dart';
import 'package:fishter/cadastro/cadastro-pescador.dart';
import 'package:flutter/material.dart';

class OpcaoCadastro extends StatefulWidget {
  @override
  _OpcaoCadastro_State createState() => _OpcaoCadastro_State();
}

class _OpcaoCadastro_State extends State<OpcaoCadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Opção Cadastro', style: TextStyle(color: Colors.white)),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Escolha uma forma de como vai utilizar o sistema:',
                style: TextStyle(
                  fontSize: 35,
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
              ),
              SizedBox(height: 40),
              RaisedButton(
                padding: const EdgeInsets.all(15),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastroPescador())),
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: Text(
                  "Pescador",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                color: Colors.black, //Text
              ),
              SizedBox(height: 40),
              RaisedButton(
                padding: const EdgeInsets.all(15),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastroComerciante())),
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: Text(
                  "Comerciante",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                color: Colors.black, //Text
              ),
            ]),
          ),
        ));
  }
}
