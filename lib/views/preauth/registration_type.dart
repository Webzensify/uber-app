import 'package:flutter/material.dart';
import 'package:travelo/components/custom_card.dart';

class RegistrationType extends StatelessWidget {
  const RegistrationType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            Text(
              'Registration Type',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 16),
            CustomCard(
              title: 'User',
              imageUrl: 'assets/images/human.png',
              onTap: () {
                Navigator.pushNamed(context, '/register', arguments: 0);
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard(
              title: 'Driver',
              imageUrl: 'assets/images/carDriver.png',
              onTap: () {
                Navigator.pushNamed(context, '/register', arguments: 1);
              },
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
