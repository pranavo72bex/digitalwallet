import 'package:digitalwallet/app/const/colors_const.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final defaultTheme = ThemeData(
    scaffoldBackgroundColor: backgroundcolor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: backgroundcolor,
    ),
    brightness: Brightness.dark,
    accentColor: Colors.white,
  );
}
