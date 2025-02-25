import 'package:flutter/material.dart';

class Mytheme {
  get lightTheme => ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
        titleMedium: TextStyle(
            fontSize: 22, fontFamily: "Roboto", fontWeight: FontWeight.bold),
        titleSmall: TextStyle(fontSize: 12, fontFamily: "Roboto"),
        bodySmall: TextStyle(fontSize: 12, fontFamily: "Roboto"),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontFamily: "Roboto",
        ),
        bodyLarge: TextStyle(
            fontSize: 18, fontFamily: "Roboto", fontWeight: FontWeight.bold),
      ),
      iconButtonTheme: IconButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white)),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: Colors.black,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              overlayColor: Colors.transparent,
              foregroundColor: Colors.white,
              backgroundColor: Color(Colors.blueGrey.shade700.value))));
}
