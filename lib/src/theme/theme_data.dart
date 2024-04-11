import 'package:flutter/material.dart';

ThemeData basicTheme() => ThemeData(
  primaryColor: Colors.orange,

    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.black, fontSize: 30),
        headlineMedium: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30, height: 1
        ),
    bodyMedium:
        TextStyle(
          height: 2,
          color: Colors.black,
          fontSize: 14
        ),
    ),
    filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
    //surfaceTintColor: MaterialStatePropertyAll(Colors.orange.shade200),
    backgroundColor: const MaterialStatePropertyAll(Colors.orange),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
          )
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
        style:  ButtonStyle(
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
             )
          ),
        ),
    ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style:  ButtonStyle(
      side : const MaterialStatePropertyAll(BorderSide(color: Colors.orange)),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    ),
  )
);