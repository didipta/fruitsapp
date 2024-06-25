import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appThemeData (textTheme) => ThemeData(
  textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(

    bodyMedium: GoogleFonts.poppins(textStyle: textTheme.bodyMedium),
      titleLarge: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
          letterSpacing: 0.4)
  ),
  //#8DEBF8
  primaryColor: Color(0xFF8DEBF8), //#8DEBF8
  secondaryHeaderColor: Color(0xFF1E201F), // ##1E201F

  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Color(0xFFFADEAB), // #FADEAB
     primary: Color(0xFF2799D5), // #2799D5

  ),

  scaffoldBackgroundColor: Colors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor:  Color(0xFFB07D62),
      )
  ),
  // body color white

);