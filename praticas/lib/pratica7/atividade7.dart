import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        width: 700,
        height: 700,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.yellow,
        ),
        child: Image.network('https://picsum.photos/250?image=37'),
        padding: EdgeInsets.all(40),
        margin: const EdgeInsets.all(25),
      ),
    ),
  );
}
