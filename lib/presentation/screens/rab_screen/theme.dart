import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class CustomThem {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Quicksand',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: primary,
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      inputDecorationTheme: InputDecorationTheme(
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: primary, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: primary, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
