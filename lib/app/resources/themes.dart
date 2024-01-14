import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData themeData = ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Color(0xFF383838),
      backgroundColor: Color(0xff0a3740),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff0a3740),
    ),
    focusColor: const Color(0xff0a3740),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xff0a3740),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Color(0xff0a3740),
      iconColor: Color(0xff0a3740),
      focusColor: Color(0xff0a3740),
      hoverColor: Color(0xff0a3740),
      hintStyle: TextStyle(
        color: Color(0xff0a3740),
      ),
      suffixStyle: TextStyle(
        color: Color(0xff0a3740),
      ),
      floatingLabelStyle: TextStyle(
        color: Color(0xff0a3740),
      ),
      prefixIconColor: Colors.grey,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff0a3740),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        minimumSize: const Size.fromHeight(41),
        textStyle: const TextStyle(
          fontSize: 14,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        disabledBackgroundColor: const Color(0xffc0c0c0),
        disabledForegroundColor: Colors.white,
        elevation: 0,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        minimumSize: const Size.fromHeight(41),
        backgroundColor: const Color(0xff0a3740),
        textStyle: const TextStyle(
          fontSize: 14,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        disabledBackgroundColor: const Color(0xffc0c0c0),
        disabledForegroundColor: Colors.white,
        elevation: 0,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Montserrat',
  );
}
