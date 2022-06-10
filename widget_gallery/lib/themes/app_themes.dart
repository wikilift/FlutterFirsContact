import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigo[400],
    //theme appbar
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: primary,
    ),
    //TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
    //floatingactionbuttonTheme
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),

    //elevatedbutton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
      ),
    ),
    //AHORA LOS INPUTS
    inputDecorationTheme: const InputDecorationTheme(
      helperMaxLines: 1,
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    ),
  );

/************************************** */
  //dark theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo[400],
    //theme appbar
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: primary,
    ),
    //TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
  );
  // scaffoldBackgroundColor: Colors.grey)

}
