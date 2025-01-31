import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travelo/theme/color_pallete.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String name;
  final Color? bgcolor;
  final Color? textColor;
  const AuthButton(
      {super.key,
      this.onPressed,
      required this.name,
      this.bgcolor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size(
              MediaQuery.of(context).size.width * 0.8,
              min(50.0, MediaQuery.of(context).size.height * 0.0475))),
          backgroundColor: WidgetStateProperty.all(
              bgcolor ?? ColorPallete.primaryDarkColor)),
      onPressed: onPressed,
      child: Text(
        name,
        style: TextStyle(
          color: textColor ?? ColorPallete.lightestColor,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
