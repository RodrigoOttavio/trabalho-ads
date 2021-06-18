import 'package:fishter/perfil/perfil-pescador.dart';
import 'package:flutter/material.dart';

class EditarPerfilPescador extends StatefulWidget {
  @override
  EditarPerfilPescadorState createState() => EditarPerfilPescadorState();
}

class EditarPerfilPescadorState extends State<EditarPerfilPescador> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmSenhaController = TextEditingController();

  void _exibirResposta() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('Cadastro atualizado com sucesso!'),
          actions: <Widget>[
            // define os botões na base do dialogo
            new FlatButton(
              child: new Text("Ok"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PerfilPescador(),
                  ),
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
          title: Text('Editar Perfil'),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    child: Image.asset(
                      'assets/imagens/pescador.png',
                      width: 250,
                    ),
                  ),
                  Row(
                    children: [
                      new Expanded(
                        child: FlatButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 20.0),
                                alignment: Alignment.center,
                                child: Text(
                                  "Alterar foto de perfil",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          onPressed: () => {print('Rodou')},
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextField(
                        autofocus: false,
                        maxLength: 20,
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
                      TextField(
                        autofocus: false,
                        maxLength: 45,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Alterar Senha',
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
                        maxLength: 20,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Confirmar Senha',
                          labelStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () =>
                                this.confirmSenhaController.clear(),
                            icon: Icon(Icons.clear),
                            color: Theme.of(context).accentColor,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
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
                              "Salvar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            color: Colors.black, //Text
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
