import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travelo/components/auth_button.dart';
import 'package:travelo/theme/color_pallete.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/images/logo.png')),
            const Spacer(flex: 1),
            Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing:
                        min(MediaQuery.of(context).size.height * 0.025, 26),
                    children: [
                      TextFormField(
                        style: TextStyle(
                          color: ColorPallete.lightBlack,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: Icon(
                            Icons.email_outlined,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        style: TextStyle(
                          color: ColorPallete.lightBlack,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          }
                          return null;
                        },
                      ),
                      AuthButton(
                        name: 'Login',
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            Navigator.pushNamed(context, '#');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                  color: ColorPallete.primaryDarkColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: Column(
                  spacing: MediaQuery.of(context).size.height * 0.01,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AuthButton(
                        name: 'Forgot password',
                        onPressed: () {
                          Navigator.pushNamed(context, '/forgotPassword');
                        },
                        bgcolor: ColorPallete.primaryColor,
                        textColor: const Color.fromARGB(255, 17, 17, 17)),
                    Text(
                      'or',
                      style: TextStyle(
                          color: ColorPallete.lightestColor, fontSize: 16),
                    ),
                    AuthButton(
                        name: 'Create  an account',
                        bgcolor: ColorPallete.primaryColor,
                        onPressed: () {
                          Navigator.pushNamed(context, '/registerationType');
                        },
                        textColor: const Color.fromARGB(255, 17, 17, 17)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
