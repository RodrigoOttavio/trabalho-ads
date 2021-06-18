import 'package:flutter/material.dart ';
import 'package:fishter/perfil/perfil-comerciante.dart';

// ignore: camel_case_types
class CadastroLoja extends StatefulWidget {
  @override
  _CadastroLojaState createState() => _CadastroLojaState();
}

// ignore: camel_case_types
class _CadastroLojaState extends State<CadastroLoja> {
  final TextEditingController nomeLojaController = TextEditingController();
  final TextEditingController cnpjController = TextEditingController();
  final TextEditingController enderecoController = TextEditingController();
  final TextEditingController horarioController = TextEditingController();
  final TextEditingController emailLojaController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();

  void _exibirResposta() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('Loja cadastrada com sucesso!'),
          actions: <Widget>[
            // define os botões na base do dialogo
            new FlatButton(
              child: new Text("Ok"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PerfilComerciante()));
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
        title: Text('Cadastro de Loja', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          TextField(
            autofocus: false,
            maxLength: 45,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Nome da Loja',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.nomeLojaController.clear(),
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            autofocus: false,
            maxLength: 14,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'CNPJ',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.cnpjController.clear(),
                icon: Icon(Icons.clear),
                color: Theme.of(context).accentColor,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            autofocus: false,
            maxLength: 45,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Endereço',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.enderecoController.clear(),
                icon: Icon(Icons.clear),
                color: Theme.of(context).accentColor,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            maxLength: 25,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Horário de funcionamento',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.horarioController.clear(),
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
            maxLength: 45,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.emailLojaController.clear(),
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
          TextField(
            autofocus: false,
            obscureText: true,
            maxLength: 50,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Escreva uma breve descrição da loja',
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () => this.descricaoController.clear(),
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
                onPressed: () => {_exibirResposta()},
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
          )
        ],
      ),
    );
  }
}
