import 'package:flutter/material.dart';

void main() {
  String nome = "Rodrigo, Luiz", dia = "sexta-feira";

  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Olá, ",

          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ), //TextStyle.
          children: <TextSpan>[
            TextSpan(
              text: '$nome',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.dotted,
                backgroundColor: Colors.lightGreen,
              ),
            ),
            TextSpan(
              text: '!',
            ),
            TextSpan(
              text: '\nHoje é $dia!',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.yellow,
              ), //TextStyle.
            ),
            TextSpan(
              text: '\nBom dia!',
            ),
          ],
        ),
      ),
    ),
  );
}
