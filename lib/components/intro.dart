import 'package:flutter/material.dart';
import 'package:travelo/theme/color_pallete.dart';

class Intro extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onprev;
  final String heading;
  final String subHeading;
  final int index;
  const Intro(
      {super.key,
      required this.onprev,
      required this.onNext,
      required this.heading,
      required this.subHeading,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: index > 0
              ? IconButton(onPressed: onprev, icon: Icon(Icons.arrow_back_ios))
              : IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                12, 0, MediaQuery.of(context).size.width * 0.4, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text(
                  '“$subHeading”',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 24, 0),
            child: Row(
              children: [
                Image.asset('assets/images/halfCar.png'),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: index >= 2
                              ? BorderSide(
                                  width: 4,
                                  color: ColorPallete.secondaryColor,
                                )
                              : BorderSide.none,
                          left: index >= 2
                              ? BorderSide(
                                  width: 4,
                                  color: ColorPallete.secondaryColor,
                                )
                              : BorderSide.none,
                          right: index >= 1
                              ? BorderSide(
                                  width: 4,
                                  color: ColorPallete.secondaryColor,
                                )
                              : BorderSide.none,
                          top: index >= 0
                              ? BorderSide(
                                  width: 4, color: ColorPallete.secondaryColor)
                              : BorderSide.none),
                      shape: BoxShape.circle),
                  padding: EdgeInsets.all(8),
                  child: FloatingActionButton(
                    shape: CircleBorder(),
                    onPressed: onNext,
                    child: index != 2 ? Icon(Icons.arrow_forward) : Text("Go"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
