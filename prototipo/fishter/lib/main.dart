import 'package:fishter/home/home-page.dart';
import 'package:fishter/temas/app-themes.dart';
import 'package:flutter/material.dart';
import 'login/login-page.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme(context).defaultTheme,
    );
  }
}
