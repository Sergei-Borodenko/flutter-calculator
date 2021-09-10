import 'package:flutter/material.dart';

class ThemeProvider {
  var dark = ThemeData(
    scaffoldBackgroundColor: Colors.blueGrey[800],
    colorScheme: ColorScheme.light(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 5,
          shadowColor: Colors.white,
          primary: Colors.blueGrey[800],
          padding: EdgeInsets.all(0),
          side: BorderSide(width: 3.0, color: Colors.teal[100])),
    ),
  );
  var light = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.teal[100],
        shape: CircleBorder(),
        padding: EdgeInsets.all(0),
      ),
    ),
  );
}
