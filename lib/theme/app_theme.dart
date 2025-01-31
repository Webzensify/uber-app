import 'package:flutter/material.dart';
import 'color_pallete.dart';

final appTheme = ThemeData(
  primaryColor: ColorPallete.primaryColor,
  primaryColorDark: ColorPallete.primaryDarkColor,
  primaryColorLight: ColorPallete.primaryLightColor,
  scaffoldBackgroundColor: ColorPallete.primaryColor,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: ColorPallete.secondaryColor,
  ),
  appBarTheme: AppBarTheme(
    color: ColorPallete.primaryColor,
    elevation: 0,
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    contentPadding: EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 20.0,
    ),
    prefixIconColor: ColorPallete.disabledColor,
    filled: true,
    fillColor: ColorPallete.lightestColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(500),
      borderSide: BorderSide(
          style: BorderStyle.solid, color: ColorPallete.lightBlack, width: 2.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(500.0),
      borderSide: BorderSide(
        color: ColorPallete.lightBlack,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(500.0),
      borderSide: BorderSide(
        color: ColorPallete.lightBlack,
        width: 2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(500.0),
      borderSide: BorderSide(
        color: ColorPallete.errorColor,
        width: 2,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(500.0),
      borderSide: BorderSide(
        color: ColorPallete.errorColor,
        width: 2,
      ),
    ),
    hintStyle: TextStyle(
      color: ColorPallete.disabledColor,
    ),
  ),
);
