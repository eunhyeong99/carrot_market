import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
  return TextTheme(
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    displayMedium: GoogleFonts.openSans(
        fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    titleLarge: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}


// 기존 코드 수정
AppBarTheme appTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    titleTextStyle: textTheme().headline6,
  );
}

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appTheme(),
  );
}