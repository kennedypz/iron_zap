
import 'package:flutter/material.dart';

ThemeData getTheme(){
  return ThemeData(
    primarySwatch: Colors.teal,
    primaryColor: const Color(0xFFAA14F0),
    backgroundColor: const Color(0xFFEEEEEE),
    colorScheme: const ColorScheme(
      primary: Color(0xFFAA14F0),
      primaryVariant: Color(0xFFBC8CF2),
      secondary: Color(0xFFEFF3F3),
      secondaryVariant: Color(0xFFFAFBFB),
      background: Color(0xFFEEEEEE),
      surface: Color(0xFF808080),
      onBackground: Colors.white,
      error: Colors.redAccent,
      onError: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Color(0xFF322942),
      onSurface: Color(0xFF241E30),
      brightness: Brightness.light,
    ),
    highlightColor: const Color(0xFFE3E3E3),
    fontFamily: "Roboto",
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
