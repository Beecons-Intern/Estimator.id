import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class CustomThem {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Quicksand',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primary,
      ),
      iconTheme: IconThemeData(color: Colors.black),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
