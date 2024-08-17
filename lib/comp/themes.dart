import 'package:flutter/material.dart';

ThemeData lightMode= ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Color(0xffffffff),

  ),
  textTheme: const TextTheme(
      titleLarge: TextStyle(
          color: Color(0xff000000 )
      )
  )
);

ThemeData darkMode= ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      background: Color(0xff000000),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Color(0xffffffff)
      )
    )
);