import 'package:fishter/temas/app-colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme(this.context);

  final BuildContext context;

  ThemeData get defaultTheme => ThemeData(
        primaryColor: AppColors.primary,
        accentColor: AppColors.accent,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: TextStyle(fontSize: 25)),
          backgroundColor: Colors.black,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
