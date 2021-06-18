import 'package:fishter/login/login-page.dart';
import 'package:flutter/material.dart';

class TrocarSenha extends StatefulWidget {
  @override
  _TrocarSenhaState createState() => _TrocarSenhaState();
}

class _TrocarSenhaState extends State<TrocarSenha> {
  final TextEditingController trocarSenhaController = TextEditingController();

  void _exibirResposta() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
              'Email para recuperação de senha foi enviado, verifique sua caixa de entrada.'),
          actions: <Widget>[
            // define os botões na base do dialogo
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
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
          'Recuperação de Senha',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Problemas com o login? Digite seu email para receber instruções para recuperar senha:',
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
              ),
              SizedBox(height: 40),
              TextField(
                autofocus: false,
                maxLength: 45,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Digite o email para verificação',
                  labelStyle: TextStyle(color: Colors.black),
                  suffixIcon: IconButton(
                    onPressed: () => this.trocarSenhaController.clear(),
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
                      "Enviar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    color: Colors.black, //Text
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
