import 'package:flutter/material.dart';
import 'package:travelo/components/auth_button.dart';
import 'package:travelo/theme/color_pallete.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 0,
              children: [
                Icon(
                  Icons.lock,
                  size: 100,
                  color: const Color.fromARGB(200, 0, 0, 0),
                ),
                Text(
                  'Forgot',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(200, 0, 0, 0),
                  ),
                ),
                Text(
                  'Password?',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(200, 0, 0, 0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Text(
                    "No worries we'll send you reset instructions",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(140, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.375,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 32,
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
                    AuthButton(
                      name: 'Reset Password',
                      bgcolor: ColorPallete.primaryColor,
                      textColor: ColorPallete.lightBlack,
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
          ],
        ));
  }
}
