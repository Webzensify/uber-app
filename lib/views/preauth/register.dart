import 'package:flutter/material.dart';
import 'package:travelo/components/auth_button.dart';
import 'package:travelo/theme/color_pallete.dart';

class Register extends StatelessWidget {
  // The userType is used to determine the type of user that is registering
  // 0 for user, 1 for driver.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final int userType;

  // todo : Remove these conttoller
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController =
      TextEditingController();
  Register({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double fontSize = deviceHeight * 0.04;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: deviceHeight * 0.275,
            decoration: BoxDecoration(
              color: ColorPallete.primaryDarkColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let's",
                      style: TextStyle(
                          color: ColorPallete.primaryColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w200),
                    ),
                    Text(
                      "Create",
                      style: TextStyle(
                          color: ColorPallete.primaryColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Your",
                      style: TextStyle(
                          color: ColorPallete.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: fontSize),
                    ),
                    Text(
                      "Account",
                      style: TextStyle(
                          color: ColorPallete.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: fontSize),
                    ),
                  ],
                ),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: Column(
                    spacing: 24,
                    children: [
                      SizedBox(height: 40),
                      TextFormField(
                        style: TextStyle(
                          color: ColorPallete.lightBlack,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Full name',
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your full name';
                          }
                          List<String> nameParts = value.trim().split(' ');
                          if (nameParts.length < 2 ||
                              nameParts.any((part) => part.isEmpty)) {
                            return 'Please enter at least two words';
                          }
                          if (value.contains(RegExp(r'[^a-zA-Z\s]'))) {
                            return 'Please enter a valid name';
                          }
                          return null;
                        },
                      ),
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
                        controller: passwordController,
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
                      TextFormField(
                        controller: retypePasswordController,
                        style: TextStyle(
                          color: ColorPallete.lightBlack,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Retype Password',
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please retype your password';
                          }
                          if (value != passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      AuthButton(
                        name: 'Signup',
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            if (userType == 0) {
                              Navigator.of(context)
                                  .pushReplacementNamed("/home");
                            } else {
                              Navigator.of(context).pushReplacementNamed("#");
                            }
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
