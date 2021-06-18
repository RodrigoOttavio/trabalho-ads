import 'package:fishter/login/login-page.dart';
import 'package:fishter/menu/config.dart';
import 'package:fishter/menu/lista-comercios.dart';
import 'package:fishter/menu/lista-lagoas.dart';
import 'package:fishter/menu/notificacoes.dart';
import 'package:fishter/perfil/editarPerfilPescador.dart';
import 'package:fishter/perfil/mapa.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  static const IconData water = IconData(0xe6d0, fontFamily: 'MaterialIcons');

  confirmExit(BuildContext context) {
    Widget cancelaButton = FlatButton(
      child: Text("Cancelar"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continuaButton = FlatButton(
      child: Text("Confirmar"),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Login()));
      },
    );
    //configura o AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Sentirei sua falta!"),
      content: Text("Tem certeza que deseja sair ?"),
      actions: [
        cancelaButton,
        continuaButton,
      ],
    );
    //exibe o diálogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(15, 0, 51, 1),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 48,
            ),
            Text(
              'José Junior',
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Pescador',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 24),
            buildMenuItem(
              text: 'Editar perfil',
              icon: Icons.person,
              onClicked: () => SelectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Ver mapa',
              icon: Icons.map,
              onClicked: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Mapa(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Lista de lagoas disponíveis',
              icon: water,
              onClicked: () => SelectedItem(context, 2),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Lista de comércios disponíveis',
              icon: Icons.store,
              onClicked: () => SelectedItem(context, 3),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Notificações',
              icon: Icons.notifications,
              onClicked: () => SelectedItem(context, 4),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 24),
            buildMenuItem(
              text: 'Sobre os desenvolvedores',
              icon: Icons.settings,
              onClicked: () => SelectedItem(context, 5),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Sair',
              icon: Icons.exit_to_app,
              onClicked: () => confirmExit(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    String text,
    IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void SelectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EditarPerfilPescador(),
        ));
        break;
      case 1:
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ListaLagoas(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ListaComercios(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Notificacoes(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Config(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Login(),
        ));
    }
  }
}
