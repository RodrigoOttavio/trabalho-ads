import 'package:fishter/cadastro/opcao-cadastro.dart';
import 'package:fishter/cadastro/trocar-senha.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Fishter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset('assets/imagens/logo-login.png'),
            ),
            TextFormField(
              autofocus: false,
              maxLength: 45,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Theme.of(context).accentColor,
                ),
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.black),
                suffixIcon: IconButton(
                  onPressed: () => this.loginController.clear(),
                  icon: Icon(Icons.clear),
                  color: Theme.of(context).accentColor,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              autofocus: false,
              maxLength: 20,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: Theme.of(context).accentColor,
                ),
                labelText: 'Senha',
                labelStyle: TextStyle(color: Colors.black),
                suffixIcon: IconButton(
                  onPressed: () => this.senhaController.clear(),
                  icon: Icon(Icons.clear),
                  color: Colors.black,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: FlatButton(
                            shape: new RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            splashColor: Colors.black,
                            color: Colors.white,
                            child: new Row(
                              children: <Widget>[
                                new Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                new Expanded(
                                  child: Container(),
                                ),
                                new Transform.translate(
                                  offset: Offset(15.0, 0.0),
                                  child: new Container(
                                    padding: const EdgeInsets.all(5.0),
                                    child: FlatButton(
                                      shape: new RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Colors.black,
                                            width: 1,
                                            style: BorderStyle.solid),
                                        borderRadius:
                                            new BorderRadius.circular(30.0),
                                      ),
                                      splashColor: Colors.black,
                                      color: Colors.green,
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.black,
                                      ),
                                      onPressed: () =>
                                          {print('Pressionei o botão')},
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: FlatButton(
                            shape: new RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            splashColor: Colors.black,
                            color: Colors.white,
                            child: new Row(
                              children: <Widget>[
                                new Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Cadastrar",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                new Expanded(
                                  child: Container(),
                                ),
                                new Transform.translate(
                                  offset: Offset(15.0, 0.0),
                                  child: new Container(
                                    padding: const EdgeInsets.all(5.0),
                                    child: FlatButton(
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(28.0)),
                                      splashColor: Colors.black,
                                      color: Colors.green,
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.black,
                                      ),
                                      onPressed: () => {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                OpcaoCadastro(),
                                          ),
                                        ),
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      new Expanded(
                        child: FlatButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          color: Colors.transparent,
                          child: Container(
                            padding: const EdgeInsets.only(left: 20.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Esqueceu sua senha ?",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          onPressed: () => {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => TrocarSenha(),
                              ),
                            ),
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
