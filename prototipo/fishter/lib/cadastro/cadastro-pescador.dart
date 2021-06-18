import 'package:fishter/perfil/perfil-pescador.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class CadastroPescador extends StatefulWidget {
  @override
  _CadastroPescadorState createState() => _CadastroPescadorState();
}

// ignore: camel_case_types
class _CadastroPescadorState extends State<CadastroPescador> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController idadeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmSenhaController = TextEditingController();

  void exibirResposta() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cadastro realizado com sucesso!'),
          content: Text('Este é seu Código de Usuário: #32BT046'),
          actions: <Widget>[
            // define os botões na base do dialogo
            new FlatButton(
              child: new Text("Ok"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PerfilPescador()),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cadastro Pescador',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          TextField(
            autofocus: false,
            maxLength: 45,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Nome Completo',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.nomeController.clear(),
                icon: Icon(Icons.clear),
                color: Theme.of(context).accentColor,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            autofocus: false,
            maxLength: 11,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'CPF',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.cpfController.clear(),
                icon: Icon(Icons.clear),
                color: Theme.of(context).accentColor,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            autofocus: false,
            maxLength: 3,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Idade',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.idadeController.clear(),
                icon: Icon(Icons.clear),
                color: Theme.of(context).accentColor,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            maxLength: 45,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.emailController.clear(),
                icon: Icon(Icons.clear),
                color: Theme.of(context).accentColor,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            maxLength: 20,
            autofocus: false,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.senhaController.clear(),
                icon: Icon(Icons.clear),
                color: Theme.of(context).accentColor,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            autofocus: false,
            obscureText: true,
            maxLength: 20,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Confirmar Senha',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.confirmSenhaController.clear(),
                icon: Icon(Icons.clear),
                color: Theme.of(context).accentColor,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                padding: const EdgeInsets.all(15),
                onPressed: () => {Navigator.pop(context)},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: Text(
                  "Voltar",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                color: Colors.black, //Text
              ),
              SizedBox(height: 20),
              RaisedButton(
                padding: const EdgeInsets.all(15),
                onPressed: () => {exibirResposta()},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: Text(
                  "Finalizar",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                color: Colors.black, //Text
              ),
            ],
          ),
        ],
      ),
    );
  }
}
