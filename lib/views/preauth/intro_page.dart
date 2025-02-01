import 'package:flutter/material.dart';
import 'package:travelo/components/intro.dart';

class IntroPage extends StatefulWidget {
  final int userType;
  const IntroPage({super.key, required this.userType});

  @override
  IntroState createState() => IntroState();
}

class IntroState extends State<IntroPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [];

  @override
  void initState() {
    super.initState();
    if (widget.userType == 0) {
      _children.addAll([
        Intro(
          onNext: _onNext,
          heading: "Select the route",
          subHeading: "Choose your pickup and destination.",
          index: 0,
          onprev: _onprev,
        ),
        Intro(
          onNext: _onNext,
          heading: "Book a ride",
          subHeading: "Confirm your ride details and tap to book.",
          index: 1,
          onprev: _onprev,
        ),
        Intro(
          onNext: _onNext,
          heading: "Enjoy your trip!",
          subHeading: "Your ride is on its way. \n Relax and enjoy!",
          index: 2,
          onprev: _onprev,
        ),
      ]);
    } else {
      _children.addAll([
        Intro(
          onNext: _onNext,
          heading: "Post the ride",
          subHeading: "Post your ride details with price.",
          index: 0,
          onprev: _onprev,
        ),
        Intro(
          onNext: _onNext,
          heading: "Waiting for the booking",
          subHeading: "Wait for the nearest customer and accept the ride",
          index: 1,
          onprev: _onprev,
        ),
        Intro(
          onNext: _onNext,
          heading: "Enjoy your trip!",
          subHeading: "Drive safely!",
          index: 2,
          onprev: _onprev,
        ),
      ]);
    }
  }

  void _onprev() {
    if (_currentIndex != 0) {
      setState(() {
        _currentIndex = _currentIndex - 1;
      });
    }
  }

  void _onNext() {
    if (_currentIndex < _children.length - 1) {
      setState(() {
        _currentIndex = _currentIndex + 1;
      });
    } else {
      Navigator.pushReplacementNamed(context, '/register',
          arguments: widget.userType);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
    );
  }
}
