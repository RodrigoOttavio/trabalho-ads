import 'package:fishter/login/login-page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fishter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/imagens/logo-home.png',
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(90),
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()))
              },
              child: Icon(
                Icons.arrow_forward,
                size: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
