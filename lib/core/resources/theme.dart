import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: CustomColors.white,
    primaryColor: CustomColors.white,
    fontFamily: "Inter",
    useMaterial3: false,
    appBarTheme: const AppBarTheme(
      backgroundColor: CustomColors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: CustomColors.black, 
        fontSize: 16.0, 
        fontWeight: FontWeight.w500,
        fontFamily: "Inter"
      )
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent, elevation: 0.0),
    scrollbarTheme: const ScrollbarThemeData(
      trackVisibility: WidgetStatePropertyAll(true),
      thickness: WidgetStatePropertyAll(0.5)
    )
  );
}