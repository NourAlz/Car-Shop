import 'package:flutter/material.dart';

final ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark().copyWith(
    background: Colors.black,
    primary: Color.fromARGB(255, 90, 183, 245),
    secondary: Color.fromARGB(255,24, 123, 255),
    onPrimary: Colors.grey.shade800,
  ),
);
