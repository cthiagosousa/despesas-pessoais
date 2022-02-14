import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData theme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    primary: Colors.green, 
    secondary: Colors.lightGreen, 
    surface: Colors.white, 
    background: Colors.white, 
    error: Colors.red, 
    onPrimary: Colors.green, 
    onSecondary: Colors.lightGreen, 
    onSurface: Colors.white, 
    onBackground: Colors.white, 
    onError: Colors.red,
    brightness: Brightness.light,
  ),

  textTheme: GoogleFonts.montserratTextTheme(const TextTheme(
    headline1: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: Colors.black,
    ),
    headline3: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: Colors.black,
    ),
    headline4: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 15,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Colors.black,
    ),
  )),

  iconTheme: const IconThemeData(
    color: Colors.green,
    size: 25,
  ),
);