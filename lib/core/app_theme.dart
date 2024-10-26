import 'package:cas_website/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData? _instance;
  static ThemeData getInstance() {
    return _instance ??= _getThemeData();
  }

  static ThemeData _getThemeData() {
    return ThemeData(
      textTheme: TextTheme(titleLarge: GoogleFonts.quicksand()),
      primaryColor: ApplicationColors.lightBlueThemeColor,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(
            GoogleFonts.quicksand(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
